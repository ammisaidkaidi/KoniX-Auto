package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WirelessDiscoveryHandler extends Handler {
    final /* synthetic */ WirelessDiscoveryController a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public WirelessDiscoveryHandler(WirelessDiscoveryController awhVar, Looper looper) {
        super(looper);
        this.a = awhVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                WirelessDeviceConnectionState awgVar = (WirelessDeviceConnectionState) message.obj;
                ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 226, "WirelessDiscoveryController.java")).s("Didn't receive Wi-Fi start response from device %s within %d milliseconds.", awgVar, 25000);
                if (awgVar.b == 8) {
                    this.a.c();
                    break;
                }
                break;
            case 2:
                WirelessDeviceConnectionState awgVar2 = (WirelessDeviceConnectionState) message.obj;
                ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 217, "WirelessDiscoveryController.java")).s("Didn't receive Wi-Fi version response from device %s within %d milliseconds.", awgVar2, 30000);
                awgVar2.b = 3;
                this.a.d.k(awgVar2.a);
                break;
            case 3:
                WirelessDeviceConnectionState awgVar3 = (WirelessDeviceConnectionState) message.obj;
                ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 235, "WirelessDiscoveryController.java")).s("Didn't receive connection status from device %s within %d milliseconds.", awgVar3, 30000);
                DeviceTracker bahVar = this.a.d;
                bahVar.q(bahVar.c(awgVar3.a), false);
                break;
            default:
                ((ParameterizedLoggerApi) WirelessDiscoveryController.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 243, "WirelessDiscoveryController.java")).o("Unexpected message: %d", message.what);
                break;
        }
    }
}
