package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dnr implements dnq {
    public static final cgj a;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        try {
            a = e.c("17", (dpy) ddk.p(dpy.d, new byte[]{16, -24, 7, 24, 3}), cgk.o);
            e.b("38", false);
        } catch (ddu e2) {
            throw new AssertionError("Could not parse proto flag \"17\"");
        }
    }

    @Override // defpackage.dnq
    public final dpy a(Context context) {
        return (dpy) a.b(context);
    }
}
