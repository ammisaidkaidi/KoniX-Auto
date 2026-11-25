# Android Auto (GAL / AAP) — Wire-Level Message Catalog

**Project:** KoniX-Auto receiver — `com.google.android.embedded.projection` v1.0.413336740-release
**Date:** 2026-11-25
**Protocol build:** `third_party/android_auto_projection_protocol/v4_3_as_v4_1` (build path embedded in the binary)

**Sources used (all local, from the decompilation of Achour's own APK):**
1. `libgalreceiver_jni.so` (arm64-v8a) — C++ symbol table (125,716 symbols, **not stripped**), embedded enum-name tables, JNI exports.
2. Ghidra C decompilation — `decompile_AutoLinker/native/ghidra_c/` (45,641 functions, named via symbols).
3. Java protocol layer — `com/google/android/projection/protocol/` (27 classes: `GalReceiver`, `SensorSource`, `InputSource`, `AudioSink`, `AudioSource`, `VideoSink`, all `*Callbacks`).
4. `AutoLinker_Architecture_Map.md` + `jni_map.csv` (same folder) for session/auth flow.

**Evidence levels used in every table:**
- **VERIFIED** — the message/enum type exists in the binary (C++ class with a protobuf `default_instance`, or an entry in an embedded message-ID enum table).
- **CONFIRMED-HANDLED** — additionally, a named handler/sender for it exists in the receiver (endpoint `handle*`/`send*`/`report*` symbol, also present in the Ghidra output), so this build really sends or parses it.
- **INFERRED** — direction or purpose reconstructed from naming/ownership conventions; the basis is stated. Never treated as verified.

---

## 0. Method note — what the binary does and does not contain (read this first)

- The GAL protobuf types were compiled **descriptor-less** (Google proto2 "protodef" style): the `.so` contains **no parseable `FileDescriptorProto` blobs for the GAL messages** — the only two embedded descriptor tables (252 B and 12,352 B) belong to `google/protobuf/descriptor.proto` and `cpp_features.proto`. A scan for serialized GAL descriptors found none.
- Consequences:
  - **Message type names are fully recoverable** — every generated class keeps its `gal::_<Name>_default_instance_` symbol. **181 `gal::` message types** were extracted this way.
  - **Message-ID enum value names are fully recoverable** — they sit in the binary's enum name tables (e.g. `MESSAGE_SERVICE_DISCOVERY_REQUEST`). These give the authoritative per-channel message lists below.
  - **Numeric message-type IDs are NOT recovered.** The numeric values live in proto2 internal enum tables that are not readable as plain data in this build, and the Ghidra dispatch code routes through function tables rather than a readable switch. Anywhere this catalog would need a number, it says *not recovered* rather than guessing. (The public AAP numbering is deliberately **not** copied in — this catalog only states what Achour's binary proves.)
  - **Field names are mostly NOT embedded.** "Key fields" below come from the Java callback signatures, the nested message types a message is composed of, and handler semantics — each entry says which. Where only the nested-type composition is known, fields are listed as the nested types.

## 1. Framing & transport (as proven by the sources)

- **Transports:** USB via AOAP bulk endpoints; Wi-Fi (head unit runs the AP, phone connects over TCP to an ephemeral port); Bluetooth RFCOMM carries the *Wi-Fi discovery* pre-session protocol (§14), not projection itself. (Architecture map §1, verified against transport classes and `wifi_projection_protocol` symbols.)
- **Java is a dumb pipe.** Raw bytes move between transport and native via `GalReceiver.nativeQueueIncoming` / `nativeGetEncodedFrame`. All framing, multiplexing, protobuf and TLS are native.
- **Frame routing signature (VERIFIED, from symbols):** every endpoint implements
  `routeMessage(unsigned char channel_id, unsigned short message_type, IoBuffer)` — i.e. each frame carries an **8-bit channel ID** and a **16-bit message-type ID**, and `MessageRouter` dispatches on that pair to the endpoint registered for the channel.
- **Channel IDs are negotiated, not fixed constants:** `ServiceDiscoveryResponse` contains one `Service` entry per service, and `MessageRouter::populateServiceDiscoveryResponse` fills them in from each endpoint's `addDiscoveryInfo`. No static channel-number table exists in the binary to copy.
- **Encryption:** after the version/discovery exchange on the control channel, the TLS handshake bytes travel as `MESSAGE_ENCAPSULATED_SSL` control messages; the native side is the TLS **client** (`SSL_connect` + peer verification, BoringSSL) using the credentials handed down by `GalReceiver.nativeSetCreds` (XOR-decoded `assets/credentials/`, `/system/etc/aar` `c1`/`p1` override for cert/key only). Once TLS is up, `Controller::startAuthentication` completes and an `AuthResponse` is sent. See the architecture map for the full chain.
- **Protocol version handshake:** `VersionRequestOptions` / `VersionResponseOptions` carry `PROTOCOL_MAJOR_VERSION` / `PROTOCOL_MINOR_VERSION` (enum names VERIFIED in the binary).

---

## 2. Control channel — session management (`Controller`, `MessageRouter`)

Message-ID enum: `gal::ControlMessageType` (VERIFIED). Handled by `Controller::routeMessage` / `MessageRouter::routeChannelControlMsg`.

| Message (ID enum value) | Dir | Purpose | Key fields / notes | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `VersionRequest` (`MESSAGE_VERSION_REQUEST`) | HU→phone | Open the session; offer protocol version | `VersionRequestOptions` (major/minor version) | `Controller::sendVersionRequest` | CONFIRMED-HANDLED |
| `VersionResponse` (`MESSAGE_VERSION_RESPONSE`) | phone→HU | Accept/negotiate version | `VersionResponseOptions` | `Controller::handleVersionResponse`, `handleVersionResponseOptions` | CONFIRMED-HANDLED |
| `ServiceDiscoveryRequest` (`MESSAGE_SERVICE_DISCOVERY_REQUEST`) | phone→HU | Ask the HU what services/channels it offers | Phone identity strings (name, model, etc.) — `ControllerCallbacks::serviceDiscoveryRequestCallback` takes 6 strings | `Controller::handleServiceDiscoveryRequest` | CONFIRMED-HANDLED |
| `ServiceDiscoveryResponse` (`MESSAGE_SERVICE_DISCOVERY_RESPONSE`) | HU→phone | The service catalogue: one `Service` per channel | Repeated `Service` (channel id, service type, per-service config blocks: `VideoConfiguration`, `AudioConfiguration`, `SensorSourceService`, `InputSourceService`, touchscreens, `ConnectionConfiguration`, `WirelessTcpConfiguration`…) | `Controller::sendServiceDiscoveryResponse`, `MessageRouter::populateServiceDiscoveryResponse`, every endpoint's `addDiscoveryInfo` | CONFIRMED-HANDLED |
| `ServiceDiscoveryUpdate` (`MESSAGE_SERVICE_DISCOVERY_UPDATE`) | HU→phone | Push a changed service catalogue mid-session | Same `Service` structure | `Controller::sendServiceDiscoveryUpdate` | CONFIRMED-HANDLED |
| `ChannelOpenRequest` (`MESSAGE_CHANNEL_OPEN_REQUEST`) | phone→HU | Open a specific service channel | Channel id (in frame + payload) | `MessageRouter::handleChannelOpenReq` | CONFIRMED-HANDLED |
| `ChannelOpenResponse` (`MESSAGE_CHANNEL_OPEN_RESPONSE`) | HU→phone | Accept/refuse the channel, with a `Config_Status` | Status enum (`STATUS_SUCCESS`, `STATUS_INVALID_CHANNEL`, `STATUS_INVALID_SERVICE`, …) | `MessageRouter::sendChannelOpenResp`, `notifyChannelOpened` | CONFIRMED-HANDLED |
| `ChannelCloseNotification` (`MESSAGE_CHANNEL_CLOSE_NOTIFICATION`) | either | Channel is going away | — | `MessageRouter::handleChannelCloseNotif` (receive side) | CONFIRMED-HANDLED |
| Encapsulated SSL (`MESSAGE_ENCAPSULATED_SSL`) | both | Raw TLS handshake bytes before the encrypted session exists | Not a protobuf message — opaque bytes | `SslWrapper` / `SslTransportInputOutput` (architecture map) | VERIFIED (enum) |
| `AuthResponse` (`MESSAGE_AUTH_COMPLETE`) | HU→phone | Tell the phone TLS authentication finished | Sent after `SSL_connect` + verify succeeds | `Controller::sendAuthResponse`, `startAuthentication` | CONFIRMED-HANDLED |
| `PingRequest` (`MESSAGE_PING_REQUEST`) | both | Latency/keepalive probe; carries `PingConfiguration` | Timestamp payload (opaque in this build) | `Controller::handlePingRequest`, `sendPingRequest`; `highLatencyCallback` / `latencyBackToNormalCallback` | CONFIRMED-HANDLED |
| `PingResponse` (`MESSAGE_PING_RESPONSE`) | both | Probe answer | — | `Controller::handlePingResponse` | CONFIRMED-HANDLED |
| `ByeByeRequest` (`MESSAGE_BYEBYE_REQUEST`) | either | Ask to end the session politely | `ByeByeReason` enum | `GalReceiver.nativeSendByeByeRequest` (JNI) | CONFIRMED-HANDLED |
| `ByeByeResponse` (`MESSAGE_BYEBYE_RESPONSE`) | either | Acknowledge session end | `ByeByeReason` | `GalReceiver.nativeSendByeByeResponse` (JNI) | CONFIRMED-HANDLED |
| `VoiceSessionNotification` (`MESSAGE_VOICE_SESSION_NOTIFICATION`) | phone→HU | Voice-assistant session started/stopped on the phone | Boolean state (INFERRED from notification pattern) | Surfaced via controller callbacks | VERIFIED; direction INFERRED |
| `AudioFocusRequestNotification` (`MESSAGE_AUDIO_FOCUS_REQUEST`) | phone→HU | Phone asks the car for audio focus | `AudioFocusRequestType` (`AUDIO_FOCUS_GAIN`, `…_TRANSIENT`, `…_MAY_DUCK`, `RELEASE`) | Pairs with `AudioFocusNotification` below | VERIFIED; direction INFERRED from request/grant pairing |
| `AudioFocusNotification` (`MESSAGE_AUDIO_FOCUS_NOTIFICATION`) | HU→phone | Car grants/releases audio focus | `AudioFocusStateType` (`AUDIO_FOCUS_STATE_GAIN`, `…_LOSS`, `…_LOSS_TRANSIENT_CAN_DUCK`, media-only / guidance-only variants) | `GalReceiver.nativeSetAudioFocus` → `Controller::setAudioFocus` | CONFIRMED-HANDLED |
| `NavFocusRequestNotification` (`MESSAGE_NAV_FOCUS_REQUEST`) | phone→HU | Phone asks for navigation focus (cluster display) | — | Pairs with grant below | VERIFIED; direction INFERRED |
| `NavFocusNotification` (`MESSAGE_NAV_FOCUS_NOTIFICATION`) | HU→phone | Car grants nav focus | `NAV_FOCUS_NATIVE` / `NAV_FOCUS_PROJECTED` | `GalReceiver.nativeSetNavFocus` → `Controller::setNavigationFocus` | CONFIRMED-HANDLED |
| `CallAvailabilityStatus` (`MESSAGE_CALL_AVAILABILITY_STATUS`) | HU→phone | Tell the phone whether the car can take calls (e.g. HFP present) | Availability status enum | `GalReceiver.nativeSetCallAvailability` → `Controller::setCallAvailability` | CONFIRMED-HANDLED |
| `BatteryStatusNotification` (`MESSAGE_BATTERY_STATUS_NOTIFICATION`) | phone→HU | Phone battery level/state for the HU status UI | Battery level (field names not embedded) | No dedicated Java callback found — consumed natively | VERIFIED; direction INFERRED |
| `UserSwitchRequest` (`MESSAGE_USER_SWITCH_REQUEST`) | phone→HU | Phone user/profile switch mid-session | — | `Controller::handleUserSwitchRequest` | CONFIRMED-HANDLED |
| `UserSwitchResponse` (`MESSAGE_USER_SWITCH_RESPONSE`) | HU→phone | Answer to the switch request | Status (`ERROR_MULTIPLE_USER_SWITCH_REQUEST` exists in the status enum) | `Controller::sendUserSwitchResponse`, `GalReceiver.nativeSendUserSwitchResponse` | CONFIRMED-HANDLED |
| `CarConnectedDevicesRequest` (`MESSAGE_CAR_CONNECTED_DEVICES_REQUEST`) | phone→HU | Ask which devices the car itself is connected to | — | Answered by `sendCarConnectedDevices` | VERIFIED; direction INFERRED |
| `CarConnectedDevices` (`MESSAGE_CAR_CONNECTED_DEVICES_RESPONSE`) | HU→phone | The car's connected-device list | Repeated `ConnectedDevice` | `Controller::sendCarConnectedDevices`, `GalReceiver.nativeSendCarConnectedDevices` | CONFIRMED-HANDLED |
| Framing/internal/unexpected error (`MESSAGE_FRAMING_ERROR`, `MESSAGE_INTERNAL_ERROR`, `MESSAGE_UNEXPECTED_MESSAGE`) | HU→phone | Protocol error reports — IDs only, no protobuf payload classes exist for them | — | `MessageRouter::sendInternalError`, `sendUnexpectedMessage` | CONFIRMED-HANDLED |

Also set before/around the session (HU-local, via JNI, not wire messages): `nativeSetCarInfo`, `nativeSetHeadUnitInfo`, `nativeSetIdentityInfo`, `nativeSetCreds`.

---

## 3. Input service (`InputSource`) — car → phone control

Message-ID values (VERIFIED): `INPUT_MESSAGE_INPUT_REPORT`, `INPUT_MESSAGE_INPUT_FEEDBACK`, `INPUT_MESSAGE_KEY_BINDING_REQUEST`, `INPUT_MESSAGE_KEY_BINDING_RESPONSE`.

| Message | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `InputReport` | HU→phone | All user input: touches, keys, rotary/absolute controls | Composed of `TouchEvent` (repeated `TouchEvent_Pointer`: x, y, pointer id), `KeyEvent` (`KeyEvent_Key`: Android keycode — the full `KEYCODE_*` table is in the binary, incl. `KEYCODE_CALL`, `KEYCODE_ENDCALL`, `KEYCODE_HEADSETHOOK`, `KEYCODE_MEDIA_PLAY_PAUSE`, `KEYCODE_VOICE_ASSIST`), `AbsoluteEvent`/`AbsoluteEvent_Abs`, `RelativeEvent`/`RelativeEvent_Rel` | `InputSource::sendInputReport`, `reportTouch`, `reportKey`, `reportKeyLongPress`, `reportAbsolute`, `reportRelative`, `reportTouchPad`; Java `InputSource.nativeSendTouchEvent`, `nativeSendKeyEvent`, `nativeSendKeyLongEvent`, `nativeRegisterTouchScreen`, `nativeRegisterKeyCodes` | CONFIRMED-HANDLED |
| `InputFeedback` | phone→HU | Phone acknowledges/reacts to input (e.g. haptic/feedback events) | `InputFeedback` payload | `InputSource::handleInputFeedback` | CONFIRMED-HANDLED |
| `KeyBindingRequest` | phone→HU | Phone asks to bind a function to a car key | Keycode + binding (field names not embedded) | `InputSource::handleKeyBindingRequest`; failure status `STATUS_KEYCODE_NOT_BOUND` exists | CONFIRMED-HANDLED |
| `KeyBindingResponse` | HU→phone | Binding result | Status | Sent by `InputSource` (no separate send symbol; paired with the handled request) | VERIFIED; handling INFERRED |

**This channel is the remote control.** Media play/pause/next, call answer/end and the assistant button are not separate protocol commands — they are `KeyEvent`s inside `InputReport`.

---

## 4. Sensor service (`SensorSource`) — car → phone vehicle data

Message-ID values (VERIFIED): `SENSOR_MESSAGE_REQUEST`, `SENSOR_MESSAGE_RESPONSE`, `SENSOR_MESSAGE_BATCH`, `SENSOR_MESSAGE_ERROR`.

| Message | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `SensorRequest` | phone→HU | Subscribe to a set of sensor types | Repeated sensor-type enum (the `SENSOR_*` list below) | `SensorSource::handleSensorRequest` | CONFIRMED-HANDLED |
| `SensorResponse` | HU→phone | Subscription result | Status (`SENSOR_OK`, `SENSOR_ERROR_TRANSIENT`, `SENSOR_ERROR_PERMANENT`, `STATUS_INVALID_SENSOR`) | `SensorSource::sendSensorResponse` | CONFIRMED-HANDLED |
| `SensorBatch` | HU→phone | Periodic bundle of all subscribed sensor readings | One optional sub-message per sensor type (below) | `SensorSource::sendSensorBatch`, `tick`; Java `SensorSource` `nativeReport*` family | CONFIRMED-HANDLED |
| `SensorError` | HU→phone | A sensor source failed | Sensor type + error kind | In the message set; sent on the batch path | VERIFIED |

**Sensor data types inside `SensorBatch`** — all VERIFIED as `gal::` message types, each with a `SENSOR_*` enum value and (where listed) a Java `SensorSource.nativeReport*` method, which is CONFIRMED-HANDLED evidence:

| Data message | Enum | Java reporter |
|---|---|---|
| `LocationData` (wraps `Location`: lat/long/accuracy — the strings `latitude`/`longitude` do occur in the binary) | `SENSOR_LOCATION` | `nativeReportLocation(timestamp, lat, lon, …)` |
| `SpeedData` | `SENSOR_SPEED` | `nativeReportSpeedData` |
| `RpmData` | `SENSOR_RPM` | `nativeReportRpmData` |
| `OdometerData` | `SENSOR_ODOMETER` | `nativeReportOdometerData` |
| `FuelData` | `SENSOR_FUEL` | `nativeReportFuelData` |
| `EnvironmentData` | `SENSOR_ENVIRONMENT_DATA` | `nativeReportEnvironmentData` |
| `CompassData` | `SENSOR_COMPASS` | `nativeReportCompassData` |
| `AccelerometerData` | `SENSOR_ACCELEROMETER_DATA` | `nativeReportAccelerometerData` |
| `GyroscopeData` | `SENSOR_GYROSCOPE_DATA` | `nativeReportGyroscopeData` |
| `GpsSatelliteData` (repeated `GpsSatellite`) | `SENSOR_GPS_SATELLITE_DATA` | `nativeReportGpsSatelliteData` |
| `DrivingStatusData` | `SENSOR_DRIVING_STATUS_DATA` | `nativeReportDrivingStatusData` |
| `GearData` | `SENSOR_GEAR` | `nativeReportGearData` |
| `NightModeData` | `SENSOR_NIGHT_MODE` | `nativeReportNightModeData` |
| `ParkingBrakeData` | `SENSOR_PARKING_BRAKE` | — (native report path) |
| `DeadReckoningData` | `SENSOR_DEAD_RECKONING_DATA` | `reportDeadReckoningData` |
| `DoorData` | `SENSOR_DOOR_DATA` | `reportDoorData` |
| `PassengerData` | `SENSOR_PASSENGER_DATA` | — |
| `LightData` | `SENSOR_LIGHT_DATA` | — |
| `HvacData` | `SENSOR_HVAC_DATA` | — |
| `TirePressureData` | `SENSOR_TIRE_PRESSURE_DATA` | `reportTirePressureData` |
| `TollCardData` | `SENSOR_TOLL_CARD` | — |
| `TrailerData` | `SENSOR_TRAILER_DATA` | — |
| `DiagnosticsData` | `SENSOR_OBDII_DIAGNOSTIC_CODES` (mapping INFERRED) | `reportDiagnosticsData` |
| — (energy model) | `SENSOR_VEHICLE_ENERGY_MODEL_DATA` | enum VERIFIED; no matching data message class found |

The HU advertises which sensors it has in `ServiceDiscoveryResponse` via `SensorSourceService` + repeated `SensorSourceService_Sensor` entries (`SensorSource::addDiscoveryInfo`, `nativeRegisterSensor`).

---

## 5. Media sink channels — video & audio (`VideoSink`, `AudioSink`, shared `MediaSinkBase`)

One channel per stream. The **video channel** carries the projection screen; **audio channels** are instantiated per `AudioStreamType` (VERIFIED enum): `AUDIO_STREAM_MEDIA`, `AUDIO_STREAM_GUIDANCE`, `AUDIO_STREAM_TELEPHONY`, `AUDIO_STREAM_SYSTEM_AUDIO`. There is **no separate speech/TTS channel type** — guidance audio is one of these audio channels. All share the `MEDIA_MESSAGE_*` ID set (VERIFIED) and the `MediaSinkService` discovery block (with `VideoConfiguration` / `AudioConfiguration` lists; codecs in the binary include `MEDIA_CODEC_VIDEO_H264_BP`, `H265`, `VP9`, `AV1`, `MEDIA_CODEC_AUDIO_PCM`, `AAC_LC`, `AAC_LC_ADTS`).

| Message (ID enum value) | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `Setup` (`MEDIA_MESSAGE_SETUP`) | phone→HU | Phone selects a configuration and starts the stream setup | Chosen config index (the handlers take an `int`) | `VideoSink::handleSetup(int)`, `AudioSink::handleSetup(int)` | CONFIRMED-HANDLED |
| `Config` (`MEDIA_MESSAGE_CONFIG`) | HU→phone | Sink answers with the applied configuration / status | `Config_Status` | `VideoSink::sendConfig`, `AudioSink::sendConfig` | CONFIRMED-HANDLED |
| Codec config (`MEDIA_MESSAGE_CODEC_CONFIG`) | phone→HU | Decoder configuration blob (e.g. H.264 SPS/PPS) — raw bytes, not a `gal::` message | Opaque `void*`/length in the handler | `handleCodecConfig(void*, ulong)`; Java `VideoSinkCallbacks.codecConfigCallback(byte[])`, `AudioSinkCallbacks.codecConfigCallback` | CONFIRMED-HANDLED |
| Data (`MEDIA_MESSAGE_DATA`) | phone→HU | The media payload itself: H.264 frames on video, PCM/AAC on audio — raw `IoBuffer`, not protobuf | Timestamped frames | `handleDataAvailable`; Java `dataAvailableCallback(channel, timestamp, ByteBuffer)` | CONFIRMED-HANDLED |
| Start (`MEDIA_MESSAGE_START`) | phone→HU | Begin playback/rendering | — | Java `playbackStartCallback` on both sinks | CONFIRMED-HANDLED |
| Stop (`MEDIA_MESSAGE_STOP`) | phone→HU | End playback/rendering | — | Java `playbackStopCallback` | CONFIRMED-HANDLED |
| Ack (`MEDIA_MESSAGE_ACK`) | HU→phone | Sink acknowledges consumed frames (flow control) | Frame count | Java `AudioSink.nativeAckFrames` / `nativeAckFramesNew`, `nativeSetMaxUnackedFrames` | CONFIRMED-HANDLED |
| `AudioUnderflowNotification` (`MEDIA_MESSAGE_AUDIO_UNDERFLOW_NOTIFICATION`) | HU→phone | Sink starved of audio data | — | `AudioSink::sendUnderflowNotification`, `nativeSendUnderflowNotification` | CONFIRMED-HANDLED |
| `VideoFocusRequestNotification` (`MEDIA_MESSAGE_VIDEO_FOCUS_REQUEST`) | phone→HU | Phone asks for the video surface focus | Focus type (`VIDEO_FOCUS_PROJECTED`, `…_NO_INPUT_FOCUS`) | `handleVideoFocusRequest` on both sinks | CONFIRMED-HANDLED |
| `VideoFocusNotification` (`MEDIA_MESSAGE_VIDEO_FOCUS_NOTIFICATION`) | HU→phone | Car reports video focus state | `VIDEO_FOCUS_NATIVE`, `…_NATIVE_TRANSIENT`, `…_PROJECTED` | Java `videoFocusCallback(state, …)` | CONFIRMED-HANDLED |
| `UpdateUiConfigRequest` (`MEDIA_MESSAGE_UPDATE_UI_CONFIG_REQUEST`) | phone→HU | Phone proposes a UI configuration change | `UiConfig` (display metrics, `Insets`, day/night…) | `VideoSink::updateUiConfig` path; Java `sourceVideoConfigCallback` | VERIFIED; handling INFERRED |
| `UpdateUiConfigReply` (`MEDIA_MESSAGE_UPDATE_UI_CONFIG_REPLY`) | HU→phone | Car's answer to the UI config proposal | Status | `handleUpdateUiConfigReply` exists on the sinks (they also *receive* it in the source role during negotiation) | CONFIRMED-HANDLED (handler); direction INFERRED |
| Action-taken (`MEDIA_MESSAGE_ACTION_TAKEN_NOTIFICATION`) | phone→HU | Phone reports it acted on a UI/media action | — | No dedicated handler symbol found | VERIFIED (enum); direction INFERRED |

Discovery/config types: `MediaSinkService`, `VideoConfiguration`, `AudioConfiguration`, `UiConfig`, `Insets`, `DisplayType` enum — all VERIFIED message/enum types.

## 6. Microphone channel (`AudioSource`) — car mic → phone

Shares the media message-ID family on its own channel (`AudioSource::routeMessage`).

| Message | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `MicrophoneRequest` (`MEDIA_MESSAGE_MICROPHONE_REQUEST`) | phone→HU | Phone opens/closes the car microphone for voice input | Open/close + audio config (field names not embedded) | `AudioSource::handleMicrophoneRequest` | CONFIRMED-HANDLED |
| `MicrophoneResponse` (`MEDIA_MESSAGE_MICROPHONE_RESPONSE`) | HU→phone | Mic state answer, then raw mic audio frames flow HU→phone on this channel | Status; audio payload is raw bytes via `AudioSource::send` | `AudioSource::microphoneResponse`, Java `AudioSource.nativeSend`, `nativeSetConfig` | CONFIRMED-HANDLED |
| Ack (`MEDIA_MESSAGE_ACK`) | phone→HU | Phone acknowledges mic frames | — | `AudioSource::handleAck` | CONFIRMED-HANDLED |

## 7. Media playback status service (`MediaPlaybackStatusEndpoint`)

Message-ID values (VERIFIED): `MEDIA_PLAYBACK_STATUS`, `MEDIA_PLAYBACK_METADATA`, `MEDIA_PLAYBACK_INPUT`.

| Message | Dir | Purpose | Key fields (from the Java callback) | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `MediaPlaybackStatus` | phone→HU | Playback state of the phone's media app | State, source name, shuffle/repeat-type flags — `mediaPlaybackStatusCallback(int state, String source, int, boolean, boolean, boolean)` | `handleMediaPlaybackStatus` | CONFIRMED-HANDLED |
| `MediaPlaybackMetadata` | phone→HU | Now-playing track info | Title, artist, album strings + album-art bytes + duration/position ints — `mediaPlaybackMetadataCallback(String, String, String, byte[], String, int, int)` | `handleMediaPlaybackMetadata` | CONFIRMED-HANDLED |
| `MediaPlaybackInput` | HU→phone | Car-side user action on playback (the endpoint's action reporting) | Action payload (field names not embedded) | `MediaPlaybackStatusEndpoint::reportAction` | CONFIRMED-HANDLED (sender exists); payload INFERRED |

Note: transport controls (play/pause/next) normally travel as key events on the input channel (§3); this service is the *status/metadata* feed plus its own input message.

## 8. Media browser service (`MediaBrowserEndpoint`)

Message-ID values (VERIFIED): `MEDIA_ROOT_NODE`, `MEDIA_SOURCE_NODE`, `MEDIA_SONG_NODE`, `MEDIA_LIST_NODE`, `MEDIA_GET_NODE`, `MEDIA_BROWSE_INPUT`.

| Message | Dir | Purpose | Key fields (from the Java callbacks) | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `MediaRootNode` | phone→HU | Root of the phone's browsable media tree | Node id + child source names/icons — `rootNodeCallback(String, String[], String[], byte[][])` | `handleRootNode` | CONFIRMED-HANDLED |
| `MediaSourceNode` | phone→HU | A media source (app/collection) with its children | `sourceNodeCallback(...)` (ids, names, icons, types) | `handleSourceNode`, `copySourceNode` | CONFIRMED-HANDLED |
| `MediaSongNode` | phone→HU | A single track entry | Title/artist/album strings + art bytes + duration — `songNodeCallback(String, String, String, String, byte[], int)` | `handleSongNode`, `copySongNode` | CONFIRMED-HANDLED |
| `MediaListNode` | phone→HU | A playlist/folder listing | `listNodeCallback(...)` (parallel string arrays for children) | `handleListNode`, `copyListNode` | CONFIRMED-HANDLED |
| `MediaGetNode` | HU→phone | Request one node of the tree by id | Node id | `MediaBrowserEndpoint::mediaGetNode` | CONFIRMED-HANDLED |
| `MediaBrowserInput` | HU→phone | User action inside the browser (select/play a node) | Action + node id | `reportAction` | CONFIRMED-HANDLED (sender); payload INFERRED |

## 9. Phone status service (`PhoneStatusEndpoint`)

Message-ID values (VERIFIED): `PHONE_STATUS`, `PHONE_STATUS_INPUT`.

| Message | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `PhoneStatus` | phone→HU | Call state of the phone: repeated `PhoneStatus_Call` entries (state, number, name — exact field names not embedded; the whole message is handed to Java as an opaque `byte[]`) | `phoneStatusCallback(byte[])` — Java receives the raw serialized message | `PhoneStatusEndpoint::handlePhoneStatus` → `PhoneStatusCallbacks` | CONFIRMED-HANDLED |
| `PhoneStatusInput` | HU→phone | Car-side action on a call (answer/reject/end from the HU UI) | Action payload | `PhoneStatusEndpoint::reportAction` | CONFIRMED-HANDLED (sender); payload INFERRED |

**There is no dial/answer *command* message class and no telephony-control service in this protocol build** — see §17.

## 10. Navigation status service (`NavigationStatusEndpoint`) — instrument-cluster feed

Message-ID values (VERIFIED, `INSTRUMENT_CLUSTER_*`): `…_START`, `…_STOP`, `…_NAVIGATION_STATUS`, `…_NAVIGATION_TURN_EVENT`, `…_NAVIGATION_DISTANCE_EVENT`, `…_NAVIGATION_CURRENT_POSITION`, `…_NAVIGATION_STATE`.

| Message | Dir | Purpose | Key fields (from the Java callbacks) | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `NavigationStatusStart` | HU→phone | Start the cluster nav feed (car has a cluster display) | `NavigationStatusService_ImageOptions` (maneuver image size/format) advertised in discovery | `NavigationStatusEndpoint::start` | CONFIRMED-HANDLED |
| `NavigationStatusStop` | HU→phone | Stop the feed | — | `NavigationStatusEndpoint::stop` | CONFIRMED-HANDLED |
| `NavigationStatus` | phone→HU | Nav app state (active/inactive…) | `navigationStatusCallback(int)` | `handleNavigationStatus` | CONFIRMED-HANDLED |
| `NavigationNextTurnEvent` | phone→HU | Next maneuver | Road name, turn type/side (the full maneuver enum is in the binary: `TURN_NORMAL_LEFT`, `ROUNDABOUT_ENTER_CW`, `U_TURN_LEFT`, `FERRY_BOAT`, …), maneuver image bytes, distances — `navigationNextTurnCallback(String, int, int, byte[], int, int)` | `handleNavigationNextTurnEvent` | CONFIRMED-HANDLED |
| `NavigationNextTurnDistanceEvent` | phone→HU | Distance countdown to the maneuver | Distance/time ints — `navigationNextTurnDistanceCallback(int, int, int, int)` | `handleNavigationDistanceEvent` | CONFIRMED-HANDLED |
| `NavigationCurrentPosition` | phone→HU | Current road/position during guidance | Opaque `byte[]` to Java (`navigationCurrentPositionCallback(byte[])`); composed of `NavigationRoad`, `NavigationStep`, `NavigationDestination` types | `handleNavigationCurrentPosition` | CONFIRMED-HANDLED |
| `NavigationState` | phone→HU | Full guidance state snapshot | Opaque `byte[]` (`navigationStateCallback(byte[])`); related types `NavigationDestinationDistance`, `TrafficIncident` | `handleNavigationState` | CONFIRMED-HANDLED |

## 11. Generic notification service (`NotificationEndpoint`)

Message-ID values (VERIFIED): `GENERIC_NOTIFICATION_MESSAGE`, `GENERIC_NOTIFICATION_ACK`, `GENERIC_NOTIFICATION_SUBSCRIBE`, `GENERIC_NOTIFICATION_UNSUBSCRIBE`.

| Message | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `GenericNotificationMessage` | phone→HU | A phone notification forwarded to the car (title/text/icon — field names not embedded) | `GenericNotificationService` is the discovery block | `NotificationEndpoint::routeMessage`, `sendNotification` (native→Java delivery) | CONFIRMED-HANDLED |
| `GenericNotificationAck` | HU→phone | Car acknowledges / acts on the notification | Ack/action id | `NotificationEndpoint::ackNotification` | CONFIRMED-HANDLED |
| Subscribe / Unsubscribe | HU→phone | IDs exist in the message-ID enum, but **no dedicated protobuf message classes** for them were found in the 181 types | — | — | VERIFIED (enum only) |

## 12. Bluetooth service (`BluetoothEndpoint`) — in-session pairing support

Message-ID enum: `gal::BluetoothMessageId` (VERIFIED): `BLUETOOTH_MESSAGE_PAIRING_REQUEST`, `…_PAIRING_RESPONSE`, `…_AUTHENTICATION_DATA`, `…_AUTHENTICATION_RESULT`. Pairing methods: `BLUETOOTH_PAIRING_NUMERIC_COMPARISON`, `…_PASSKEY_ENTRY`, `…_PIN`, `…_OOB`, `…_UNAVAILABLE`.

| Message | Dir | Purpose | Key fields | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `BluetoothPairingRequest` | phone→HU | Phone asks the car to pair (car's BT address + method) | `BluetoothCallbacks.onPairingRequest(String address, int method)` | `BluetoothEndpoint::handlePairingRequest`, `registerCarBluetoothAddress`, `registerPairingMethod` | CONFIRMED-HANDLED |
| `BluetoothPairingResponse` | HU→phone | Car's pairing answer | Status | `sendPairingResponse` | CONFIRMED-HANDLED |
| `BluetoothAuthenticationData` | HU→phone | Car sends pairing auth data (passkey/OOB) | Auth blob | `sendAuthData`, Java `nativeSendAuthData`; `onReadyForPairing`, `nativeRequestDelayedPairing` for the delayed flow | CONFIRMED-HANDLED |
| `BluetoothAuthenticationResult` | phone→HU | Phone reports auth success/failure | Result code (`STATUS_BLUETOOTH_INVALID_AUTH_DATA`, `…_PAIRING_DELAYED`, etc.) | `handleAuthenticationResult`, `BluetoothCallbacks.onAuthenticationResult(int)` | CONFIRMED-HANDLED |
| (status only) | HU→phone | "Bluetooth unavailable" notice — no protobuf class; sent via a dedicated JNI path | — | `nativeSendBluetoothUnavailable` | CONFIRMED-HANDLED |

Discovery block: `BluetoothService` (VERIFIED). Device info is set HU-side via `nativeSetDeviceInfo`.

## 13. Wi-Fi projection service (`WifiProjectionEndpoint`) — in-session credentials

Message-ID values (VERIFIED): `WIFI_MESSAGE_CREDENTIALS_REQUEST`, `WIFI_MESSAGE_CREDENTIALS_RESPONSE`.

| Message | Dir | Purpose | Key fields (from the Java callback) | Java / native mapping | Evidence |
|---|---|---|---|---|---|
| `WifiCredentialsRequest` | phone→HU | Phone asks for the car AP's credentials mid-session | — | `WifiProjectionEndpoint::handleWifiCredentialsRequest` | CONFIRMED-HANDLED |
| `WifiCredentialsResponse` | HU→phone | The AP credentials | `CarWifi$CarWifiCredentials` returned by `WifiProjectionCallbacks.onWifiCredentialsRequest()` (SSID, password, security mode, channel — the credential material itself is supplied by the HU app) | Endpoint builds the response from the Java callback | CONFIRMED-HANDLED |

Discovery block: `WifiProjectionService`; TCP parameters ride in `ConnectionConfiguration` / `WirelessTcpConfiguration` (§2).

## 14. Wi-Fi discovery protocol — pre-session, over Bluetooth (separate protocol!)

Before any GAL session exists, the phone and car negotiate Wi-Fi over Bluetooth using a **different protobuf namespace** — `wifi_discovery::` — implemented by `wifi_projection_protocol::WifiProjectionProtocol::WifiDiscoveryChannel`. These types are VERIFIED as C++ classes in the binary; they are *not* part of the 181 `gal::` types.

Message-ID values (VERIFIED): `MESSAGE_WIFI_VERSION_REQUEST_BT`, `MESSAGE_WIFI_VERSION_RESPONSE_BT`, `MESSAGE_WIFI_REQUEST_INFO_BT`, `MESSAGE_WIFI_RESPONSE_INFO_BT`, `MESSAGE_WIFI_REQUEST_START_BT`, `MESSAGE_WIFI_RESPONSE_START_BT`, `MESSAGE_WIFI_CONNECT_STATUS_BT`, `MESSAGE_WIFI_PING_REQUEST_BT`, `MESSAGE_WIFI_PING_RESPONSE_BT`, `MESSAGE_WIFI_CONNECTION_REJECTION_BT`.

| Message (`wifi_discovery::`) | Dir | Purpose | Native mapping | Evidence |
|---|---|---|---|---|
| `WifiVersionRequest` / `WifiVersionResponse` | phone→HU / HU→phone | Discovery-protocol version handshake | `WifiDiscoveryChannel::HandleWifiVersionResponse` (HU receives the response in the initiator role it plays per connection) | CONFIRMED-HANDLED |
| `WifiInfoRequest` / `WifiInfoResponse` | ↔ | Exchange AP capability info (channels, bands, security modes — `AccessPointType`, `WifiChannelType`, `WifiSecurityMode` enums) | Channel send/receive loop | VERIFIED |
| `WifiStartRequest` / `WifiStartResponse` | ↔ | Ask the HU to start its AP / result (`StartRequestReason`, `MessageStatus`; failures incl. `STATUS_NO_SUPPORTED_WIFI_CHANNELS`, `STATUS_WIFI_INCORRECT_CREDENTIALS`) | `HandleWifiStartResponse` | CONFIRMED-HANDLED |
| `WifiConnectStatus` | phone→HU | Phone reports Wi-Fi connection progress/result | `HandleWifiConnectStatus` | CONFIRMED-HANDLED |
| `WifiPingRequest` / `WifiPingResponse` | ↔ | Link check on the discovery channel | Channel loop | VERIFIED |
| `WifiConnectionRejection` | either | Refuse the Wi-Fi handover (`ConnectionRejectionReason`) | Channel loop | VERIFIED |

This is the exchange KoniX's transport-mode and AP settings feed into — and the layer *below* the ⛔ protected AP channel/band logic in the GAL stack proper.

---

## 15. Radio service (`RadioEndpoint`) — the phone drives the *car's* tuner

Message-ID enum values (VERIFIED, `RADIO_MESSAGE_*` below). Every request has a named `RadioEndpoint::handle*` and every response a `send*` — this whole service is CONFIRMED-HANDLED. Requests are phone→HU, responses and notifications HU→phone. The Java side mirrors them in `RadioCallbacks` (e.g. `onGetCurrentRadioState()`, `onScanStationsRequest(...)`), and station data is composed of `RadioStationInfo`, `RadioStationMetaData`, `RdsData`, `HdRadioSisData`, `HdRadioPsdData`, `HdRadioStationInfo`, `StationPreset`/`StationPresetList`, `RadioProperties`, `RadioStateNotification` (all VERIFIED types; regions: `RADIO_REGION_ITU_1/2`, `JAPAN`, `KOREA`, `OIRT`).

| Message | Dir | Purpose |
|---|---|---|
| `RadioSourceRequest` / `RadioSourceResponse` | phone→HU / HU→phone | Activate the radio source |
| `SelectActiveRadioRequest` | phone→HU | Choose AM/FM/HD/DAB band source (answer rides state notifications — no dedicated response class exists) |
| `ScanStationsRequest` / `ScanStationsResponse` | ↔ | Scan for stations |
| `SeekStationRequest` / `SeekStationResponse` | ↔ | Seek next/previous station |
| `StepChannelRequest` / `StepChannelResponse` | ↔ | Step one channel increment |
| `TuneToStationRequest` / `TuneToStationResponse` | ↔ | Tune to an explicit station |
| `ConfigureChannelSpacingRequest` / `ConfigureChannelSpacingResponse` | ↔ | Set regional channel spacing |
| `GetProgramListRequest` / `GetProgramListResponse` | ↔ | Fetch the station/program list |
| `GetTrafficUpdateRequest` / `GetTrafficUpdateResponse` | ↔ | Fetch traffic announcements |
| `CancelRadioOperationsRequest` / `CancelRadioOperationsResponse` | ↔ | Abort an in-progress scan/seek |
| `MuteRadioRequest` / `MuteRadioResponse` | ↔ | Mute/unmute the tuner |
| `RadioStateNotification` (`RADIO_MESSAGE_STATE_NOTIFICATION`) | HU→phone | Tuner state changed |
| `RadioStationInfoNotification` (`RADIO_MESSAGE_RADIO_STATION_INFO_NOTIFICATION`) | HU→phone | Current station info/metadata changed |
| `StationPresetsNotification` (`RADIO_MESSAGE_STATION_PRESETS_NOTIFICATION`) | HU→phone | Preset list changed |
| `ActiveRadioNotification` (`RADIO_MESSAGE_ACTIVE_RADIO_NOTIFICATION`) | HU→phone | Active radio source changed |

## 16. Vendor extension channel (`VendorExtensionBase`) — Google test/diagnostics services

Vendor services ride their own channel(s) behind `VendorExtensionService` discovery entries. Two are implemented in this build:

### 16a. GAL verification extension (`GalVerificationVendorExtension`)
Message-ID enum: `gal::GalVerificationVendorExtensionMessageId` (VERIFIED). Java: `GalVerificationVendorExtension` JNI (`nativeInit`, `nativeSend`, `nativeCloseChannel`) + `GalVerificationVendorExtensionCallbacks`. These are factory/verification-harness messages, not normal phone features — directions are as implemented by the HU-side endpoint; treat as INFERRED where no handler symbol exists.

| Message | Purpose | Evidence |
|---|---|---|
| `GalVerificationAudioFocus` | Harness forces/checks audio-focus state | VERIFIED |
| `GalVerificationVideoFocus` | Harness forces/checks video-focus state | VERIFIED |
| `GalVerificationDisplayInformationRequest` | Ask the HU for its display information | VERIFIED |
| `GalVerificationInjectInput` | Inject synthetic input events into the HU | VERIFIED |
| `GalVerificationScreenCaptureRequest` | Ask the HU for a screen capture | VERIFIED |
| `GalVerificationSetSensor` | Override a sensor value for testing | VERIFIED |

### 16b. Google diagnostics extension
Message-ID values (VERIFIED): `DIAGNOSTICS_BUG_REPORT_REQUEST`, `DIAGNOSTICS_BUG_REPORT_RESPONSE` (enum `gal::GoogleDiagnosticsVendorExtensionMessageId`). A `DiagnosticsData` payload type exists (also referenced by the sensor diagnostics path). No endpoint class symbols were found for it in this build — **VERIFIED as enum/types, handling NOT confirmed**.

## 17. Expected but ABSENT — checked and not in this build

- **A "get location" request from the phone** — does not exist. Location only flows car→phone (§18).
- **Telephony control (dial / answer / hang-up commands)** — no such message classes. Call control = key events (§3) + `PhoneStatusInput` (§9) + the HU declaring `CallAvailabilityStatus` (§2).
- **SMS / messaging service** — no message types. Phone notifications arrive only via the generic notification service (§11).
- **A separate speech/TTS channel** — guidance is an `AudioStreamType` on a media sink channel (§5).
- **App-list / app-launch commands** — the projected UI *is* the phone's own app; the protocol has no launch-intent message.

## 18. How location and calls actually flow (the two questions that prompted this catalog)

**Location.** The phone never sends its location to the car, and the car never asks the phone for one. Flow: phone sends `SensorRequest` listing `SENSOR_LOCATION` → HU answers `SensorResponse` → HU then *pushes* `SensorBatch` messages containing `LocationData` whenever its GPS updates. On the Java side this is `SensorSource.nativeReportLocation(timestamp, latitude, longitude, …)` — the values originate from the **car's** GPS stack and are handed *down* into native to be sent to the phone. Android Auto navigation therefore runs on the car's antenna, not the phone's.

**Calls.** The phone owns the call. Flow: phone pushes `PhoneStatus` (repeated `PhoneStatus_Call`) whenever call state changes → native hands it to Java as an opaque blob via `PhoneStatusCallbacks.phoneStatusCallback(byte[])` → the HU UI renders it. In the other direction the car can only: (a) declare availability once with `CallAvailabilityStatus` (`nativeSetCallAvailability`), (b) send user actions with `PhoneStatusInput` (`reportAction`), and (c) send ordinary key events — `KEYCODE_CALL`, `KEYCODE_ENDCALL`, `KEYCODE_HEADSETHOOK` inside an `InputReport`. Call *audio* is just the `AUDIO_STREAM_TELEPHONY` media sink channel (§5). There is no point in the protocol where the car can place a call.

## 19. Coverage note

- **181** `gal::` message types exist in the binary. Of these, **~120 are top-level wire messages or service/discovery blocks catalogued above**; the remainder are nested data types (e.g. `TouchEvent_Pointer`, `PhoneStatus_Call`, `GpsSatellite`, the `*Data` sensor payloads, radio station sub-structures) which are catalogued under their parent messages, plus the `GalVerification*` set.
- Every message-ID enum value found in the binary's enum tables is accounted for in §§2–16, including the three control-channel error IDs that have no payload class.
- **Channel mapping:** all catalogued wire messages are assigned to a service/channel — the assignment is CONFIRMED wherever an endpoint `routeMessage`/`handle*`/`send*` symbol exists (the large majority), and marked INFERRED only for a handful of notification/ack directions.
- **Not recovered, stated plainly:**
  - Numeric message-type IDs (16-bit) and numeric channel IDs — not readable from this descriptor-less build (channel IDs are negotiated per session anyway).
  - Exact protobuf field numbers/names for most messages — field names are not embedded; "key fields" here come from Java signatures, nested-type composition and handler signatures.
  - The Wi-Fi discovery protocol's field layouts (its types are a separate namespace; only message names/IDs and handler pairings were catalogued).
- The separate `wifi_discovery::` set (§14) adds 10 message types outside the `gal::` count.

*Generated from Achour's own decompiled APK artifacts — no external protocol documentation was copied in; where this catalog is silent, the binary was silent.*
