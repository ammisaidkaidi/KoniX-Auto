package defpackage;

import android.os.Handler;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yp implements Runnable {
    private final Callable a;
    private final gc b;
    private final Handler c;

    public yp(Handler handler, Callable callable, gc gcVar) {
        this.a = callable;
        this.b = gcVar;
        this.c = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        yj yjVar;
        try {
            yjVar = ((yh) this.a).call();
        } catch (Exception e) {
            yjVar = null;
        }
        this.c.post(new yo(this.b, yjVar));
    }
}
