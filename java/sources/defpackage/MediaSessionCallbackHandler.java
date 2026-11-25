package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaSessionCallbackHandler extends Handler {
    final /* synthetic */ MediaSessionCompatInnerHelper a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MediaSessionCallbackHandler(MediaSessionCompatInnerHelper fnVar, Looper looper) {
        super(looper);
        this.a = fnVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        MediaSessionImplInterface foVar;
        MediaSessionCallbackHandler flVar;
        if (message.what == 1) {
            synchronized (this.a.a) {
                foVar = (MediaSessionImplInterface) this.a.c.get();
                flVar = this.a.d;
            }
            if (foVar == null || this.a != foVar.a() || flVar == null) {
                return;
            }
            foVar.l();
            foVar.l();
        }
    }
}
