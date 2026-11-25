package com.google.android.projection.protocol;

import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.widget.Toast;
import com.achour.tweaks.NativeLib;
import com.google.android.embedded.projection.R;
import defpackage.awo;
import defpackage.awp;
import defpackage.axf;
import defpackage.baf;
import defpackage.bah;
import defpackage.bbh;
import defpackage.bbl;
import defpackage.ckh;
import defpackage.clk;
import defpackage.cln;
import defpackage.clo;
import defpackage.clp;
import defpackage.clv;
import defpackage.clw;
import defpackage.cly;
import defpackage.csx;
import defpackage.dih;
import defpackage.dkd;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GalReceiver implements ControllerCallbacks, clw {
    public static final int a = ckh.NAV_FOCUS_NATIVE.c;
    public static final int b = ckh.NAV_FOCUS_PROJECTED.c;
    public final SparseArray c = new SparseArray();
    public final clv d;
    public volatile boolean e;
    public final bbh f;
    private final clp g;
    private final Handler h;
    private final bbh i;
    private final clo j;
    private final bbh k;
    private long mNativeGalReceiver;

    /* compiled from: PG */
    public class CarInfo {
        public boolean canPlayNativeMediaDuringVr = false;
        public String displayName;
        public int driverPosition;
        public String headUnitMake;
        public String headUnitModel;
        public String headUnitSoftwareBuild;
        public String headUnitSoftwareVersion;
        public String manufacturer;
        public String model;
        public String modelYear;
        public int sessionConfiguration;
        public String vehicleId;

        public CarInfo(String str, String str2, String str3, String str4, int i, String str5, String str6, String str7, String str8, int i2, String str9) {
            this.manufacturer = str;
            this.model = str2;
            this.modelYear = str3;
            this.vehicleId = str4;
            this.driverPosition = i;
            this.headUnitMake = str5;
            this.headUnitModel = str6;
            this.headUnitSoftwareBuild = str7;
            this.headUnitSoftwareVersion = str8;
            this.sessionConfiguration = i2;
            this.displayName = str9;
        }
    }

    /* compiled from: PG */
    public class ConnectedDevice {
        public final int deviceId;
        public final String deviceName;

        public ConnectedDevice(String str, int i) {
            this.deviceName = str;
            this.deviceId = i;
        }
    }

    static {
        if ("robolectric".equals(Build.FINGERPRINT)) {
            return;
        }
        NativeLib.load();
    }

    public GalReceiver(bbh bbhVar, clp clpVar, bbh bbhVar2, bbh bbhVar3, Handler handler, CarInfo carInfo, String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        clo cloVar = new clo(this);
        this.j = cloVar;
        this.f = bbhVar;
        this.g = clpVar;
        this.k = bbhVar2;
        this.i = bbhVar3;
        this.h = handler;
        this.d = new clv(handler, cloVar);
        nativeInit();
        if (!nativeSetCreds(str, str2, str3)) {
            throw new RuntimeException("SSL initialization failed");
        }
        nativeSetCarInfo(carInfo);
    }

    private native void nativeInit();

    private native void nativeSetCarInfo(CarInfo carInfo);

    private native boolean nativeSetCreds(String str, String str2, String str3);

    @Override // defpackage.clw
    public final long a() {
        throw null;
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void audioFocusRequestCallback(int i) {
        this.g.h(i);
    }

    @Override // defpackage.clw
    public final void b() {
        throw null;
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void batteryStatusNotificationCallback(final int i, final int i2, boolean z) {
        final bbh bbhVar = this.f;
        if (z) {
            ((csx) bbl.a.c().h("com/google/android/apps/auto/aareceiver/session/ProjectionSession$1", "onBatteryStatusNotification", 226, "ProjectionSession.java")).o("Battery critical! %d seconds remaining.", i2);
            if (bbhVar.a.e() || bbhVar.a.y.getAndSet(true)) {
                bbhVar.a.y.set(false);
            } else {
                final byte[] bArr = null;
                bbhVar.a.i.post(new Runnable(i2, i, bArr) { // from class: bbg
                    public final /* synthetic */ int a;
                    public final /* synthetic */ int b;

                    @Override // java.lang.Runnable
                    public final void run() {
                        bbh bbhVar2 = bbh.this;
                        int i3 = this.a;
                        int i4 = this.b;
                        String i5 = hf.i(bbhVar2.a.f, R.string.low_battery_minutes_toast, "num_minutes_remaining", Integer.valueOf(i3 / 60));
                        bbl bblVar = bbhVar2.a;
                        Toast.makeText(bbhVar2.a.f, hf.i(bblVar.f, R.string.low_battery_percentage_toast, "device", bblVar.h.d(), "battery_level", Integer.valueOf(i4), "low_battery_minutes_message", i5), 1).show();
                    }
                });
            }
        }
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void bugreportRequestCallback(long j) {
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void byeByeRequestCallback(int i) {
        bbh bbhVar = this.i;
        bbhVar.a.j.nativeSendByeByeResponse();
        bbhVar.a.j.c(cly.MD_BYEBYE);
        switch (i) {
            case 1:
                if (bbhVar.a.g == awp.USB || dih.c()) {
                    bah bahVar = bbhVar.a.d;
                    awo awoVar = bahVar.h.h;
                    if (!dkd.c()) {
                        bahVar.p(awoVar);
                        break;
                    }
                }
                break;
            case 3:
                if (bbhVar.a.g == awp.USB) {
                    bbl bblVar = bbhVar.a;
                    bah bahVar2 = bblVar.d;
                    baf h = bahVar2.h(bblVar.h.e());
                    bahVar2.s(h, awp.USB);
                    bahVar2.d.l(h.g);
                    break;
                }
                break;
            case 4:
                if (bbhVar.a.g == awp.USB) {
                    bbl bblVar2 = bbhVar.a;
                    bblVar2.d.l(bblVar2.h.e());
                    break;
                }
                break;
        }
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void byeByeResponseCallback() {
        bbh bbhVar = this.i;
        bbhVar.a.j.c(bbhVar.a.H == 1 ? cly.USER_SWITCH : cly.HU_BYEBYE);
    }

    public final void c(cly clyVar) {
        this.d.c(clyVar);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void carConnectedDevicesRequestCallback() {
        Log.w("AHU.GAL_RECEIVER", "carConnectedDevicesRequestCallback: user switch is not support, ignored.");
    }

    public final void d(int i, clk clkVar) {
        if (this.e) {
            throw new RuntimeException("can't register services after teardown");
        }
        if (this.c.get(i) != null) {
            throw new IllegalArgumentException("this service ID is already taken");
        }
        this.c.put(i, clkVar);
        if (clkVar.c(i, this.mNativeGalReceiver)) {
            return;
        }
        StringBuilder sb = new StringBuilder(35);
        sb.append("Service ");
        sb.append(i);
        sb.append(" failed to init.");
        Log.e("AHU.GAL_RECEIVER", sb.toString());
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void highLatencyCallback(int[] iArr) {
        this.h.post(new cln(this));
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void latencyBackToNormalCallback(int[] iArr) {
    }

    public native void nativeFlushControllerChannelQueue();

    public native int nativeGetAdditionalBytesToRead(byte[] bArr);

    public native int nativeGetEncodedFrame(byte[] bArr);

    public native void nativePrepareShutdown();

    public native int nativeQueueIncoming(byte[] bArr, int i);

    public native boolean nativeRegister(long j);

    public native void nativeSendByeByeRequest(int i);

    public native void nativeSendByeByeResponse();

    public native void nativeSetAudioFocus(int i, boolean z);

    public native void nativeSetCallAvailability(boolean z);

    public native void nativeSetNavFocus(int i);

    public native boolean nativeSetTransportConfigurationListener(ConnectionConfigurationCallbacks connectionConfigurationCallbacks);

    public native void nativeShutdown();

    public native void nativeStart();

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void navigationFocusCallback(int i) {
        this.f.a.u.b(i);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void serviceDiscoveryRequestCallback(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, String str2, String str3) {
        this.k.a(bArr2, str);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void unrecoverableErrorCallback(int i) {
        int i2;
        String str;
        if (i == -25) {
            c(cly.PING_TIMEOUT);
            return;
        }
        bbh bbhVar = this.f;
        switch (i) {
            case -255:
                i2 = 1;
                break;
            case -254:
                i2 = 2;
                break;
            case -253:
                i2 = 3;
                break;
            case -251:
                i2 = 5;
                break;
            case -250:
                i2 = 6;
                break;
            case -25:
                i2 = 231;
                break;
            case -24:
                i2 = 232;
                break;
            case -23:
                i2 = 233;
                break;
            case -22:
                i2 = 234;
                break;
            case -21:
                i2 = 235;
                break;
            case -20:
                i2 = 236;
                break;
            case -19:
                i2 = 237;
                break;
            case -18:
                i2 = 238;
                break;
            case -17:
                i2 = 239;
                break;
            case -16:
                i2 = 240;
                break;
            case -15:
                i2 = 241;
                break;
            case -14:
                i2 = 242;
                break;
            case -13:
                i2 = 243;
                break;
            case -12:
                i2 = 244;
                break;
            case -11:
                i2 = 245;
                break;
            case -10:
                i2 = 246;
                break;
            case -9:
                i2 = 247;
                break;
            case -8:
                i2 = 248;
                break;
            case -7:
                i2 = 249;
                break;
            case -6:
                i2 = 250;
                break;
            case -5:
                i2 = 251;
                break;
            case -4:
                i2 = 252;
                break;
            case -3:
                i2 = 253;
                break;
            case -2:
                i2 = 254;
                break;
            case -1:
                i2 = 255;
                break;
            case 0:
                i2 = 256;
                break;
            case 1:
                i2 = 257;
                break;
            default:
                i2 = 0;
                break;
        }
        csx csxVar = (csx) bbl.a.b().h("com/google/android/apps/auto/aareceiver/session/ProjectionSession$1", "onUnrecoverableError", 267, "ProjectionSession.java");
        switch (i2) {
            case 1:
                str = "STATUS_OUT_OF_MEMORY";
                break;
            case 2:
                str = "STATUS_BUSY";
                break;
            case 3:
                str = "STATUS_UNEXPECTED_MESSAGE";
                break;
            case 5:
                str = "STATUS_FRAMING_ERROR";
                break;
            case 6:
                str = "STATUS_COMMAND_NOT_SUPPORTED";
                break;
            case 231:
                str = "STATUS_PING_TIMEOUT";
                break;
            case 232:
                str = "STATUS_AUTHENTICATION_FAILURE_CERT_EXPIRED";
                break;
            case 233:
                str = "STATUS_AUTHENTICATION_FAILURE_CERT_NOT_YET_VALID";
                break;
            case 234:
                str = "STATUS_RADIO_COMM_ERROR";
                break;
            case 235:
                str = "STATUS_RADIO_STATION_PRESETS_NOT_SUPPORTED";
                break;
            case 236:
                str = "STATUS_INVALID_INPUT";
                break;
            case 237:
                str = "STATUS_RADIO_INVALID_STATION";
                break;
            case 238:
                str = "STATUS_KEYCODE_NOT_BOUND";
                break;
            case 239:
                str = "STATUS_BLUETOOTH_HFP_CONNECTION_FAILURE";
                break;
            case 240:
                str = "STATUS_BLUETOOTH_HFP_ANOTHER_CONNECTION";
                break;
            case 241:
                str = "STATUS_BLUETOOTH_AUTH_DATA_MISMATCH";
                break;
            case 242:
                str = "STATUS_BLUETOOTH_INVALID_AUTH_DATA";
                break;
            case 243:
                str = "STATUS_BLUETOOTH_INVALID_PAIRING_METHOD";
                break;
            case 244:
                str = "STATUS_BLUETOOTH_INVALID_ADDRESS";
                break;
            case 245:
                str = "STATUS_BLUETOOTH_UNAVAILABLE";
                break;
            case 246:
                str = "STATUS_BLUETOOTH_PAIRING_DELAYED";
                break;
            case 247:
                str = "STATUS_INVALID_SENSOR";
                break;
            case 248:
                str = "STATUS_MEDIA_CONFIG_MISMATCH";
                break;
            case 249:
                str = "STATUS_INTERNAL_ERROR";
                break;
            case 250:
                str = "STATUS_INVALID_PRIORITY";
                break;
            case 251:
                str = "STATUS_INVALID_CHANNEL";
                break;
            case 252:
                str = "STATUS_INVALID_SERVICE";
                break;
            case 253:
                str = "STATUS_AUTHENTICATION_FAILURE";
                break;
            case 254:
                str = "STATUS_CERTIFICATE_ERROR";
                break;
            case 255:
                str = "STATUS_NO_COMPATIBLE_VERSION";
                break;
            case 256:
                str = "STATUS_SUCCESS";
                break;
            case 257:
                str = "STATUS_UNSOLICITED_MESSAGE";
                break;
            default:
                str = "null";
                break;
        }
        if (i2 == 0) {
            throw null;
        }
        csxVar.p("Received unrecoverable error %s. Shutting down.", str);
        bbhVar.a.j.c(cly.CONNECTION_ERROR);
        bbhVar.a.G = i2;
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void userSwitchRequestCallback(ConnectedDevice connectedDevice) {
        Log.w("AHU.GAL_RECEIVER", "userSwitchRequestCallback: user switch is not support, ignored.");
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public final void voiceSessionNotificationCallback(int i) {
        bbh bbhVar = this.f;
        axf axfVar = bbhVar.a.t;
        synchronized (axfVar) {
            if (!axfVar.b) {
                ((csx) axf.a.c().h("com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager", "onVoiceSessionNotification", 70, "VoiceSessionAppFocusManager.java")).n("onVoiceSessionNotification called on uninitialized object");
            } else if (i == 1) {
                if (!axfVar.c) {
                    axfVar.d.requestAppFocus(2, axfVar.e);
                    axfVar.c = true;
                }
            } else if (axfVar.c) {
                axfVar.d.abandonAppFocus(axfVar.e, 2);
                axfVar.c = false;
            }
        }
        bbhVar.a.v.d(i);
        bbhVar.a.x.c(i);
        bbhVar.a.C = i == 1;
    }
}
