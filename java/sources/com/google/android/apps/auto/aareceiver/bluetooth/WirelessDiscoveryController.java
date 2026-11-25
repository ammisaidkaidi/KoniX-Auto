package com.google.android.apps.auto.aareceiver.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import android.util.ArrayMap;
import android.widget.Toast;
import com.google.android.embedded.projection.R;
import com.google.android.projection.protocol.GalReceiver;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WirelessDiscoveryController {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController");
    public final Context c;
    public final DeviceTracker d;
    public final AndroidAutoHeadunitProjectionHandler e;
    public final AccessPoint f;
    public final LocationManager g;
    public final OemSettings i;
    public final DisplayDimensions j;
    public final TelemetryTracker k;
    public StartableServiceInterface l;
    public final WirelessSocketProvider m;
    public WeakViewAnimator n;
    private final CarInfoProvider o;
    private final WifiUtils p;
    private final FlagSourceDependencies r;
    private final AppContextModule s;
    public final Map b = new ArrayMap();
    private final WirelessDiscoveryDeviceCallback q = new WirelessDiscoveryDeviceCallback(this);
    public final Handler h = new WirelessDiscoveryHandler(this, Looper.getMainLooper());

    public WirelessDiscoveryController(Context context, DeviceTracker bahVar, AndroidAutoHeadunitProjectionHandler azyVar, AccessPoint bdqVar, FlagSourceDependencies bssVar, LocationManager locationManager, WirelessSocketProvider bduVar, OemSettings bcjVar, CarInfoProvider awtVar, DisplayDimensions awyVar, WifiUtils bhiVar, TelemetryTracker bdeVar, AppContextModule dhqVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.c = context;
        this.d = bahVar;
        this.e = azyVar;
        this.f = bdqVar;
        this.r = bssVar;
        this.g = locationManager;
        this.m = bduVar;
        this.i = bcjVar;
        this.o = awtVar;
        this.j = awyVar;
        this.p = bhiVar;
        this.k = bdeVar;
        this.s = dhqVar;
    }

    public static String a(WifiStateMessage clgVar) {
        String str;
        if (clgVar == null) {
            return "null";
        }
        String simpleName = WifiStateMessage.class.getSimpleName();
        int g = StartupTraceTracker.g(clgVar.e);
        if (ProtoMessageIntAndBooleanG != 0) {
            switch (ProtoMessageIntAndBooleanG) {
                case 2:
                    str = "STATUS_PHONE_WIFI_DISABLED";
                    break;
                case 3:
                    str = "STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE";
                    break;
                case 4:
                    str = "STATUS_NO_SUPPORTED_WIFI_CHANNELS";
                    break;
                case 5:
                    str = "STATUS_INVALID_HOST";
                    break;
                case 6:
                    str = "STATUS_WIFI_NOT_YET_STARTED";
                    break;
                case 7:
                    str = "STATUS_WIFI_DISABLED";
                    break;
                case 8:
                    str = "STATUS_PROJECTION_ALREADY_STARTED";
                    break;
                case 9:
                    str = "STATUS_WIFI_INCORRECT_CREDENTIALS";
                    break;
                case 10:
                    str = "STATUS_WIFI_INACCESSIBLE_CHANNEL";
                    break;
                case 11:
                    str = "STATUS_NO_COMPATIBLE_VERSION";
                    break;
                case 12:
                    str = "STATUS_SUCCESS";
                    break;
                case 13:
                    break;
                default:
                    str = "STATUS_WIFI_NETWORK_UNAVAILABLE";
                    break;
            }
            String str2 = clgVar.d;
            int i = clgVar.b;
            int i2 = clgVar.c;
            int length = String.valueOf(simpleName).length();
            StringBuilder sb = new StringBuilder(length + 54 + str.length() + String.valueOf(str2).length());
            StaggeredGridLayoutParams.append(simpleName);
            StaggeredGridLayoutParams.append(" {status:");
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append(", serial: ");
            StaggeredGridLayoutParams.append(str2);
            StaggeredGridLayoutParams.append(", version: ");
            StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            StaggeredGridLayoutParams.append(".");
            StaggeredGridLayoutParams.append(i2);
            StaggeredGridLayoutParams.append("}");
            return StaggeredGridLayoutParams.toString();
        }
        str = "STATUS_UNSOLICITED_MESSAGE";
        String str22 = clgVar.d;
        int i3 = clgVar.b;
        int i22 = clgVar.c;
        int length2 = String.valueOf(simpleName).length();
        StringBuilder sb2 = new StringBuilder(length2 + 54 + str.length() + String.valueOf(str22).length());
        sb2.append(simpleName);
        sb2.append(" {status:");
        sb2.append(str);
        sb2.append(", serial: ");
        sb2.append(str22);
        sb2.append(", version: ");
        sb2.append(i3);
        sb2.append(".");
        sb2.append(i22);
        sb2.append("}");
        return sb2.toString();
    }

    public final void b(BluetoothDevice bluetoothDevice) {
        WirelessDeviceConnectionState awgVar = (WirelessDeviceConnectionState) this.b.get(bluetoothDevice.getAddress());
        if (awgVar == null) {
            awgVar = new WirelessDeviceConnectionState(bluetoothDevice);
            this.b.put(bluetoothDevice.getAddress(), awgVar);
        } else {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "sendWifiVersionRequest", 424, "WirelessDiscoveryController.java")).n("Connected to the device which was already connected.");
        }
        ImmutableList a2 = this.p.a();
        if (a2.isEmpty()) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "sendWifiVersionRequest", 428, "WirelessDiscoveryController.java")).n("No Wi-Fi channels available reported.");
        }
        String address = bluetoothDevice.getAddress();
        GalReceiver.CarInfo a3 = this.o.a();
        ProtoMsgHoldingMessageAndBool n = WifiProjectionInfoMessage.g.n();
        if (n.c) {
            n.k();
            n.c = false;
        }
        WifiProjectionInfoMessage clfVar = (WifiProjectionInfoMessage) n.b;
        int i = clfVar.a | 1;
        clfVar.a = i;
        clfVar.b = 1;
        int i2 = i | 2;
        clfVar.a = i2;
        clfVar.c = 6;
        clfVar.d = 0;
        clfVar.a = i2 | 4;
        ProtoMsgHoldingMessageAndBool n2 = VehicleInfoMessage.j.n();
        String str = a3.manufacturer;
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        VehicleInfoMessage ckaVar = (VehicleInfoMessage) n2.b;
        str.getClass();
        int i3 = 1 | ckaVar.a;
        ckaVar.a = i3;
        ckaVar.b = str;
        String str2 = a3.model;
        str2.getClass();
        int i4 = i3 | 2;
        ckaVar.a = i4;
        ckaVar.c = str2;
        String str3 = a3.modelYear;
        str3.getClass();
        int i5 = i4 | 4;
        ckaVar.a = i5;
        ckaVar.d = str3;
        String str4 = a3.vehicleId;
        str4.getClass();
        int i6 = i5 | 8;
        ckaVar.a = i6;
        ckaVar.e = str4;
        String str5 = a3.headUnitMake;
        str5.getClass();
        int i7 = i6 | 16;
        ckaVar.a = i7;
        ckaVar.f = str5;
        String str6 = a3.headUnitModel;
        str6.getClass();
        int i8 = i7 | 32;
        ckaVar.a = i8;
        ckaVar.g = str6;
        String str7 = a3.headUnitSoftwareBuild;
        str7.getClass();
        int i9 = i8 | 64;
        ckaVar.a = i9;
        ckaVar.h = str7;
        String str8 = a3.headUnitSoftwareVersion;
        str8.getClass();
        ckaVar.a = i9 | 128;
        ckaVar.i = str8;
        VehicleInfoMessage ckaVar2 = (VehicleInfoMessage) n2.h();
        if (n.c) {
            n.k();
            n.c = false;
        }
        WifiProjectionInfoMessage clfVar2 = (WifiProjectionInfoMessage) n.b;
        ckaVar2.getClass();
        clfVar2.f = ckaVar2;
        clfVar2.a |= 8;
        ProtoMsgHoldingMessageAndBool o = WifiProjectionInfoMessage.g.o((WifiProjectionInfoMessage) n.h());
        if (o.c) {
            o.k();
            o.c = false;
        }
        WifiProjectionInfoMessage clfVar3 = (WifiProjectionInfoMessage) o.b;
        LazyStringList ddpVar = clfVar3.e;
        if (!ddpVar.c()) {
            clfVar3.e = GeneratedMessageLite.v(ddpVar);
        }
        ProtoMessageBuilderBase.d(a2, clfVar3.e);
        j(address, 4, o.h());
        awgVar.b = 2;
        Handler handler = this.h;
        handler.sendMessageDelayed(handler.obtainMessage(2, awgVar), 30000L);
    }

    public final void c() {
        if (this.d.h == null) {
            Context context = this.c;
            Toast.makeText(context, context.getResources().getString(R.string.unable_to_start_wireless), 1).show();
        }
    }

    public final void d() {
        if (AaReceiverFlags45350014Facade.c()) {
            this.f.j();
        }
        if (this.l != null) {
            throw new IllegalStateException("Rfcomm Server already running");
        }
        FlagSourceDependencies bssVar = this.r;
        WirelessDiscoveryDeviceCallback awaVar = this.q;
        awaVar.getClass();
        Executor executor = (Executor) bssVar.c.a();
        executor.getClass();
        RfcommChannelCallback avwVar = (RfcommChannelCallback) bssVar.b.a();
        avwVar.getClass();
        this.l = new RfcommServer(awaVar, executor, avwVar, (TwoProviderHolder) bssVar.a.a());
        this.k.a(LatencyEventType.RFCOMM_STARTUP);
        this.l.start();
    }

    public final void e(ProjectionDevice awoVar, ProjectionStartReason claVar) {
        if (claVar == ProjectionStartReason.USER_REQUEST) {
            throw new IllegalStateException("startWirelessProjectionInBackground should not be called with StartRequestReason USER_REQUEST.");
        }
        k(awoVar, 2, claVar, new AccessPointStartCallback(this, awoVar));
    }

    public final void f(WirelessDeviceConnectionState awgVar) {
        this.h.removeMessages(3, awgVar);
    }

    public final void g(WirelessDeviceConnectionState awgVar) {
        this.h.removeMessages(1, awgVar);
    }

    public final boolean h() {
        return this.h.hasMessages(1) || this.d.h != null;
    }

    public final boolean i() {
        return this.l != null;
    }

    public final void j(String str, int i, MessageLite derVar) {
        RfcommConnectionInfo avvVar;
        StartableServiceInterface avzVar = this.l;
        byte[] h = derVar.h();
        synchronized (((RfcommServer) avzVar).b) {
            avvVar = (RfcommConnectionInfo) ((RfcommServer) avzVar).c.get(str);
        }
        if (avvVar == null) {
            ((ParameterizedLoggerApi) RfcommServer.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "sendMessage", 171, "RfcommServer.java")).r("Failed to send message %d to device %s. Device not found.", i, str);
            return;
        }
        final RfcommChannel avpVar = avvVar.c;
        int length = h.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putShort((short) length);
        allocate.putShort((short) i);
        allocate.put(ProtoMessageSingleEnumFieldH);
        final byte[] array = allocate.array();
        avpVar.f.execute(new Runnable() { // from class: avn
            @Override // java.lang.Runnable
            public final void run() {
                RfcommChannel avpVar2 = RfcommChannel.this;
                try {
                    avpVar2.b.write(array);
                } catch (IOException e) {
                    if (avpVar2.d) {
                        return;
                    }
                    avpVar2.e.execute(new RfcommChannelMessageRunnable(avpVar2, 2));
                }
            }
        });
    }

    public final void k(ProjectionDevice awoVar, int i, ProjectionStartReason claVar, AccessPointStateListener bdrVar) {
        BluetoothDevice a2;
        WirelessDeviceConnectionState awgVar = null;
        if (awoVar != null && (a2 = awoVar.a()) != null) {
            awgVar = (WirelessDeviceConnectionState) this.b.get(a2.getAddress());
        }
        if (awgVar == null) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "startWirelessProjection", 316, "WirelessDiscoveryController.java")).p("Unexpected btDevice %s", awoVar);
            return;
        }
        if (this.d.u(awoVar)) {
            return;
        }
        LocationManager locationManager = this.g;
        if (1 == 0) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "startWirelessProjection", 326, "WirelessDiscoveryController.java")).n("Can't start access point, location services might be disabled.");
            if (NavInstructionTypeEnum == 1) {
                Toast.makeText(this.c, R.string.wireless_failed_location_services_disabled, 1).show();
                return;
            }
            return;
        }
        AppContextModule dhqVar = this.s;
        if (1 == 0) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "startWirelessProjection", 336, "WirelessDiscoveryController.java")).n("Not starting ViewDragTouchListener background, insufficient permissions.");
            return;
        }
        if (this.j.c()) {
            if (awgVar.b != 7) {
                awgVar.b = 6;
            }
            this.f.i(new WifiStartSenderCallback(this, awgVar, claVar, awoVar));
            this.f.i(bdrVar);
            if (AaReceiverFlags45350014Facade.c() && this.f.k()) {
                return;
            }
            this.f.j();
        }
    }
}
