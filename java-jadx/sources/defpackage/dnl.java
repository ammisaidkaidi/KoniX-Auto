package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dnl implements dnk {
    public static final cgj a;

    static {
        try {
            a = new cgo("com.google.android.libraries.performance.primes").d().e().c("12", (dpy) ddk.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.m);
        } catch (ddu e) {
            throw new AssertionError("Could not parse proto flag \"12\"");
        }
    }

    @Override // defpackage.dnk
    public final dpy a(Context context) {
        return (dpy) a.b(context);
    }
}
