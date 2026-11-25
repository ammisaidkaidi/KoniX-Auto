package defpackage;

import java.io.Closeable;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cxj implements cxk {
    private final Method a;

    public cxj(Method method) {
        this.a = method;
    }

    @Override // defpackage.cxk
    public final void a(Closeable closeable, Throwable th, Throwable th2) {
        if (th == th2) {
            return;
        }
        try {
            this.a.invoke(th, th2);
        } catch (Throwable th3) {
            cxi.a.a(closeable, th, th2);
        }
    }
}
