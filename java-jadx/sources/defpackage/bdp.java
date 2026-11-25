package defpackage;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdp extends Handler {
    private final WeakReference a;

    public bdp(bdq bdqVar) {
        this.a = new WeakReference(bdqVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        bdq bdqVar = (bdq) this.a.get();
        if (bdqVar == null) {
        }
        switch (message.what) {
            case 1:
                bdr bdrVar = (bdr) message.obj;
                ((csx) bdq.a.b().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$PendingCallbackHandler", "handleMessage", 578, "AccessPoint.java")).n("Timeout waiting for Wifi Access Point to come up");
                if (bdqVar.l(bdrVar)) {
                    bdrVar.a(2);
                    break;
                }
                break;
            default:
                ((csx) bdq.a.b().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$PendingCallbackHandler", "handleMessage", 585, "AccessPoint.java")).p("Unexpected message: %s", message);
                break;
        }
    }
}
