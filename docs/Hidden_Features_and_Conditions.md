# AutoLinker — Hidden Features, Options & Condition-Gated Features

Everything below was found in the decompiled code (jadx, de-obfuscated tree). "Condition" = what must
be true for the feature to exist/work at all. Defaults are the values compiled into this APK;
Phenotype flags can be flipped server-side by Google without an app update.

---

## 0. The master condition (manifest level)

The app declares `android.hardware.type.automotive` + car feature `com.google.android.car.feature.AARECEIVER`
and requests **privileged permissions**: `BLUETOOTH_PRIVILEGED`, `MANAGE_USB`, `OVERRIDE_WIFI_CONFIG`,
`CAR_HANDLE_USB_AOAP_DEVICE`, `CAR_DISPLAY_IN_CLUSTER`, `CONTROL_INCALL_EXPERIENCE`, …
On a normal (non-system) install these are simply not granted — which is why the sideloaded build
needs the tweak layer. `PersistentService` additionally requires `android.car.permission.BIND_PROJECTION_SERVICE`
and is not exported: only the car framework can bind it; all outside control flows through the
receivers in §3.

**Master permission gate for projection:** session init refuses to run unless ALL of
`ACCESS_COARSE_LOCATION`, `ACCESS_FINE_LOCATION`, `RECORD_AUDIO`, `READ_PHONE_STATE`,
`CAR_SPEED`, `CAR_ENERGY` are granted (plus `BLUETOOTH_CONNECT`/`BLUETOOTH_SCAN` on SDK ≥ 31).
One missing permission = "Missing permissions, not calling projection handler init".

---

## 1. Hidden settings (Google's own settings screen)

`SettingsActivity` is not exported; it opens only via the system Settings app
(`com.android.settings.action.EXTRA_SETTINGS`). The screen shows just 2 items —
**Open source licenses** and **Version** — everything else sits in a hidden **Developer category**
(`isPreferenceVisible=false`).

### The unlock — and its hard condition
Tap the **Version row 10 times** (warning toasts start at tap 7: "X steps away"; tap 10 sets
`developer_mode_enable=true`). **But the tap listener is only registered when `Build.TYPE` is
`eng` or `userdebug`.** On a production `user` build the whole developer block is never wired —
the unlock is impossible from the UI.

### Developer category contents
| Option (key) | Effect | Extra condition |
|---|---|---|
| Enable developer settings (`developer_mode_enable`) | Master switch showing/hiding the category | — |
| Enable wireless (`car_wifi_enabled`) | Turns wireless projection discovery on/off | The tweak's CarCompat force-seeds this to `true` at startup |
| Launch mode (`launch_mode`: auto/off) | `off` → head unit reports launch-mode 2 (start suppressed) | **Row removed entirely unless Phenotype flag "9" (45356796 group) is ON** |
| Projection UI mode (`projection_ui_mode`: full_screen/blended/status_bar) | UI mode bits reported to car framework; applies next session | — |
| UI mode variation (`projection_ui_mode_variation`: no_clock/no_battery/no_phone) | Hides clock / battery / phone icons (no_phone = bit 512) | — |
| Video latency checker (`video_latency_checker_enabled`, default false) | End-to-end video latency measurement in `VideoLatencyChecker` | **Switch hard-disabled unless Phenotype flag 45351428 is ON; also requires eng/userdebug build** (OemSettingsPrefsImpl checks all three) |
| Primes debug activity (`primes_debug_activity`) | Opens Google Primes perf-debug dashboards | **Row removed unless Phenotype flag 45353265 is ON and a Primes debug activity is installed** |

### OEM kill switch (no UI at all)
`OemSettingsImpl` live-watches the secure setting **`com.android.car.projection.DISABLED`**.
Format: semicolon items `*|android-auto / wireless|usb / *|<usb-serial-or-BT-address>`.
A `*` device token disables that transport for **all** phones; a specific ID disables it per device
(USB matched by serial, wireless by BT address). An OEM can silently block your transports with this.

---

## 2. Server-side (Phenotype) flags — features that are OFF by default

28 facades / ~50 flags in namespace `com.google.android.apps.auto.aareceiver`; defaults live in the
Impl classes and in `res/xml/com_google_android_apps_auto_aareceiver_phenotype_release.xml`.
The ones a user would actually notice:

| Flag | Default | What it gates |
|---|---|---|
| "15" (Djq) | **OFF** | **Cancel-connection buttons** — `WaitingForConnectionActivity` and the headunit activity only show a cancel button when ON. Default: a stuck connection cannot be cancelled from the UI |
| "9" (45356796 group) | **OFF** | **Wireless auto-reconnect eligibility** (DeviceTracker master predicate) + visibility of the `launch_mode` setting + BYEBYE cleanup over wireless |
| 45356796 | **OFF** | **Wireless auto-restart after PING_TIMEOUT** (AUTOMATIC_RESTART). OFF = a dropped wireless session stays dropped |
| 45354780 | **OFF** | Alternate `UsbDetachedReceiver.maybeRestartProjection` strategy (ON) vs close-reason-based restart (OFF) |
| "19" (Dko) | **OFF** | **Latency telemetry master switch** — the whole `TelemetryTracker` is a no-op when OFF |
| 45353773/76, 45355571, 45353771/74/75/72 | **all OFF** | Every **Primes metric category** (crash, jank, memory, network, storage, timer) individually. Only the master switch 45353265 defaults ON |
| "4" (Div) | **OFF** | **Cluster display availability** — `ClusterDisplayAvailability.a()` = flag && cluster present. OFF ⇒ cluster never reported (see also §4) |
| 45351428 | ON | Video latency checker enablement (still needs the OEM pref + eng/userdebug, §1) |
| 45351549 | ON | Device cleanup on disconnect: ON = skip `DeviceTracker.p()` cleanup in several paths; OFF = cleanup runs |
| 45355405 (+ long 45355406 = 20) | OFF | BT adapter-startup failure handling + startup latency tracking; the long flag is a numeric BT-manager parameter (default 20) |
| 45351030 | ON | Qualcomm low-latency decoder keys (`vendor.qti-ext-dec-low-latency.enable=1`, picture-order) on the video format |
| 45353198 | ON | Media transport keys (play/pause/stop) swallowed locally instead of forwarded to the phone |
| 45351251 | ON | "Assistant available" requires a configured assistant / VoiceInteractionService; OFF = always true |
| 45359517 | ON | Rich in-call experience (needs `CONTROL_INCALL_EXPERIENCE` too, §5) |
| 45360511 | OFF | Projection UI mode read from an RRO overlay (`R.integer.rro_projection_ui_mode`) instead of CarProjectionManager |
| 45356776 | OFF | dumpsys includes the ExperimentFlagDumper section (flag dump) |
| proto "16" (Dis) | empty | **Remotely addable certificate-override directories**: the proto's entries are prepended to the c1/p1 search path list, ahead of `/system/etc/aar` — Google can remotely add cert-override locations |
| "7" (Dig) | ON | **Dead flag** — defined, never called anywhere |

Flags 45350358-group (all ON) fine-tune navigation-status messages (roundabout angle bucketing,
empty-state suppression, nav-ended bundle). Flags 45350014-group gate AP lifecycle details
(pre-start AP, skip AP restart if already up, SSID tracking, and a 5 GHz enforcement check
`45357969` that aborts AP handling if the AP is 2.4 GHz-only).

---

## 3. Hidden commands & debug entry points

`ProjectionCommandReceiver` (not exported; car-framework only) returns ordered-broadcast result
codes (0 ok, 1 no action, 2 no extras, 3 unknown, 5 device not found, 6 wireless unavailable, 7 USB unavailable):

| Command | Effect | Condition |
|---|---|---|
| `com.android.car.projection.action.START` | Start projection, auto-picks transport (USB if USB-available and wireless isn't) | Device must exist in DeviceTracker registry |
| `...action.START_WIRELESS` | Start wireless session | Device wireless-capable, else result 6 |
| `...action.START_USB` | Start USB session | Device USB-capable, else result 7 |
| `...action.STOP` | Stop session | Only if the addressed device == active session's device |
| Extras | `extra.USB_SERIAL_NUMBER`, `extra.BLUETOOTH_ADDRESS` (device lookup by either), `extra.START_REQUEST_REASON` | Unknown device → result 5, nothing happens |

- **Hidden crash trigger:** `PersistentService.dump()` (dumpsys) with arg **`crash`** deliberately
  throws `RuntimeException("Imitation of crash!")` — a Google test hook. Without args it dumps
  WirelessDiscoveryController/DeviceTracker internals ("Start Pending", known devices…).
- `EntrypointBroadcastReceiver` (boot/package-replaced/time-set): runs Phenotype sync, schedules
  SQLite device-registry cleanup, and schedules `WifiChannelCheckWorker` **only if Wi-Fi is neither
  connected nor AP-on**.
- Internal start intent: `ProjectionIntentHelper` builds `com.google.android.embedded.projection.PROJECT`
  with extras `DEVICE`, `START_REQUEST_REASON`, and `USE_USB=true` (USB only) — this extra is what
  the activity reads to choose the transport.
- **No `android_secret_code` receiver and no Easter eggs exist anywhere in the APK.**

---

## 4. Hardware / car conditions

### USB
- Phone recognized **only** in AOAP mode: VID must be **6353 (0x18D1 Google)** and PID in
  **{11520, 11521, 11524, 11525}** (0x2D00/01/04/05). A phone that never switches to AOAP
  (charge-only cable, no AOAP support) is silently ignored ("currently not in AOAP mode, ignoring").
- `canSwitchToAoap` additionally requires the OEM allowlist to accept the device **and** its
  registry entry to be supported; it refuses if the same phone is already connected **wirelessly**.
- Session start needs per-device USB permission (`UsbManager.hasPermission`), else it defers
  to a permission-request broadcast. `NewDeviceActivity` also only fires for devices matching
  `res/xml/usb_device_filter.xml` — three stacked gates (filter → allowlist → tweak `P.usb()`).

### Cluster (instrument panel) display — four stacked conditions
1. Phenotype flag "4" ON (§2) **and** cluster discoverable;
2. Discovery: SDK ≤ 29 → a `DisplayManager` display in category `PRESENTATION`;
   SDK ≥ 30 → `CarOccupantZoneManager` present, with a **driver zone**, and
   `getDisplayForOccupant(zone, 2)` returning a display;
3. An active projection session;
4. The **phone must request codec setup for the cluster display** — hardware alone never opens it.

### Sensors (car → phone) — each needs VHAL property + car permission, else silently absent
| Sensor | VHAL property | Permission |
|---|---|---|
| Speed | 291504647 PERF_VEHICLE_SPEED | CAR_SPEED |
| RPM | 291504901 | CAR_ENGINE_DETAILED |
| Odometer | 291504644 | CAR_MILEAGE |
| Fuel | 291504903 (+ capacity > 0, else level = −1) | CAR_ENERGY |
| Parking brake | 287310850 | CAR_POWERTRAIN |
| Gear | 289408000 GEAR_SELECTION (unknown values dropped) | CAR_POWERTRAIN |
| Environment | 291505923 | CAR_EXTERIOR_ENVIRONMENT |

Night mode needs no property (head-unit uiMode). GPS sensors need the GPS provider enabled;
accel/gyro/compass need the physical Android sensors; driving state needs `CarUxRestrictionsManager`.
Speed/RPM/compass throttled to 10/s, fuel/environment to 1/s. **OBD-II and dead-reckoning are never
reported** (deliberately nulled). EV connector data only if the car's fuel-type list contains ELECTRIC.

### Rear-view camera trigger
Needs: Phenotype flag "14" ON (else no listener is even registered) + VHAL GEAR_SELECTION reporting
**REVERSE (2) sustained ~500 ms** + an active session in the right state. Any gear change cancels.

### Wi-Fi / wireless
- Wireless bootstrap requires a **Bluetooth device record** for the phone ("Missing wireless BT device" otherwise).
- AP config is delivered to the phone only if the **host IP is provisioned**; AP startup in this build
  (patched CarCompat) tries **5 GHz first if `is5GHzBandSupported()`**, falls back to 2.4 GHz, each band
  must reach `WIFI_AP_STATE_ENABLED` within ~3.6 s. (The original location-services gate in
  `AccessPoint.start()` is compiled out — `if (1 == 0)` — in this build.)
- `WifiChannelCheckWorker`: does nothing during setup wizard (`ro.boot.setupwizard_mode`);
  needs a **non-empty available-channel list** within 10 s, else discovery never starts.
- Wireless GAL endpoint **throws if the AP BSSID is null** ("Null car wifi BSSID").
- App needs `CHANGE_WIFI_STATE` to enable Wi-Fi at all.

### Hotword ("Hey Google" through the car)
Works only: during an **active session**, if the **phone opens the HotwordVendorExtension channel**,
and only for **`com.google.android.googlequicksearchbox`** (Google app) as the consumer. Otherwise inert.

### SDK-dependent behavior
BT discoverability uses different hidden APIs ≤ 29 vs > 29; cluster nav data uses
`sendNavigationStateChange` ≥ 29 vs legacy `sendEvent` below; headless-system-user detection ≥ 29.

---

## 5. Telecom & media conditions

- **Rich in-call experience**: needs the privileged `CONTROL_INCALL_EXPERIENCE` permission **and**
  flag 45359517 ON → binds `InCallServiceImpl`. Otherwise fallback: `PHONE_STATE` receiver +
  `getCallState()` → only a boolean call-availability reaches the phone. Calls from a device whose
  account ID ≠ the connected phone's BT address are ignored.
- **Media browsing**: `MediaBrowserService.onGetRoot` **rejects any client that is not a system app**
  (`ApplicationInfo.flags & 1`) — third-party apps can never browse; content itself only exists
  while a session is active.

---

## 6. Your tweak layer's hidden options (Bubble panel, `com.achour.tweaks`)

Panel entry: a ⚙ floating bubble appears only if pref `bubble=true` **and** overlay permission
(`Settings.canDrawOverlays`) is granted. Prefs in device-protected file `achour_tweaks`
(AP credentials live separately in `<package>_preferences`).

| Option | Key / default | Effect |
|---|---|---|
| Frame rate | `fps` = 0 (Auto) | Cycles 0 → 30 → 60; caps projection video fps in ScaledVideoConfiguration |
| Advertise 5 GHz channels | `adv5` = true | Adds 5180/5200/5220/5240 MHz to the channel list told to the phone (else 2.4 GHz only) |
| USB connection | `usb` = true | Off → USB phones ignored entirely in CarCompat |
| Wireless | `wifi` = true | Off → AP/tethering start returns false immediately |
| App master switch | `enabled` = true | Off → unregisters the projection runner + blocks auto-launch |
| Auto-reconnect | `autoretry` = true | Off → runner unregistered, `allowAutoLaunch()` false |
| Auto BT repair | `autorepair` = true | Enables the wireless watchdog (below) |
| Repair BT pairing now | action | removeBond → createBond on the bonded phone; fallback opens BT settings |
| Quiet 5 min | `quiet_until` | Suppresses all auto-launch 5 min + unregisters runner |
| AP credentials | `aa_v8_ap_ssid` / `aa_v8_ap_psk` | Custom AP SSID/PSK (SSID saved only if len > 3, PSK ≥ 8; applies on restart). Defaults: SSID `AndroidAuto_<BSSID last4>` or `AndroidAuto_CAR9`, PSK BSSID-derived or `AAWireless2026` |
| Restart app | action | killProcess after 600 ms to apply settings |

**Hidden automatic behaviors (no UI):**
- **Quick-drop suppression:** RFCOMM dropping **twice within 20 s** of connecting → automatic
  5-minute quiet (runner unregistered), counter persisted in `fails`.
- **Wireless watchdog:** after a wireless attempt, polls every 15 s × 8 (2 min); if no RFCOMM came
  up and `enabled && wifi && autorepair` → auto BT repair (unpair/re-pair).
- **Prefs seeding:** at startup CarCompat force-writes `car_wifi_enabled=true` and seeds default
  SSID/PSK into the app prefs — silently overriding Google's wireless-off state.
