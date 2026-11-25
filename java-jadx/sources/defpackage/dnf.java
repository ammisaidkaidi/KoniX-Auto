package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dnf implements dne {
    public static final cgj a;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        e.b("5", true);
        try {
            a = e.c("8", (dpy) ddk.p(dpy.d, new byte[]{16, -24, 7, 24, 4}), cgk.l);
        } catch (ddu e2) {
            throw new AssertionError("Could not parse proto flag \"8\"");
        }
    }

    @Override // defpackage.dne
    public final dpy a(Context context) {
        return (dpy) a.b(context);
    }
}
