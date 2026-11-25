package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dno implements dnn {
    public static final cgj a;
    public static final cgj b;
    public static final cgj c;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        e.b("45350020", false);
        e.b("2", true);
        a = e.b("3", false);
        b = e.a("45357887", 1L);
        try {
            c = e.c("19", (dpy) ddk.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.n);
        } catch (ddu e2) {
            throw new AssertionError("Could not parse proto flag \"19\"");
        }
    }

    @Override // defpackage.dnn
    public final long a(Context context) {
        return ((Long) b.b(context)).longValue();
    }

    @Override // defpackage.dnn
    public final dpy b(Context context) {
        return (dpy) c.b(context);
    }

    @Override // defpackage.dnn
    public final boolean c(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }
}
