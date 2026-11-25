package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class awb extends Handler {
    final /* synthetic */ awh a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public awb(awh awhVar, Looper looper) {
        super(looper);
        this.a = awhVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                awg awgVar = (awg) message.obj;
                ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 226, "WirelessDiscoveryController.java")).s("Didn't receive Wi-Fi start response from device %s within %d milliseconds.", awgVar, 25000);
                if (awgVar.b == 8) {
                    this.a.c();
                    break;
                }
                break;
            case 2:
                awg awgVar2 = (awg) message.obj;
                ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 217, "WirelessDiscoveryController.java")).s("Didn't receive Wi-Fi version response from device %s within %d milliseconds.", awgVar2, 30000);
                awgVar2.b = 3;
                this.a.d.k(awgVar2.a);
                break;
            case 3:
                awg awgVar3 = (awg) message.obj;
                ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 235, "WirelessDiscoveryController.java")).s("Didn't receive connection status from device %s within %d milliseconds.", awgVar3, 30000);
                bah bahVar = this.a.d;
                bahVar.q(bahVar.c(awgVar3.a), false);
                break;
            default:
                ((csx) awh.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$2", "handleMessage", 243, "WirelessDiscoveryController.java")).o("Unexpected message: %d", message.what);
                break;
        }
    }
}
