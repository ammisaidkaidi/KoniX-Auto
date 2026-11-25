package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class fl extends Handler {
    final /* synthetic */ fn a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl(fn fnVar, Looper looper) {
        super(looper);
        this.a = fnVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        fo foVar;
        fl flVar;
        if (message.what == 1) {
            synchronized (this.a.a) {
                foVar = (fo) this.a.c.get();
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
