package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dnu implements dnt {
    public static final cgj a;

    static {
        try {
            a = new cgo("com.google.android.libraries.performance.primes").d().e().c("9", (dpy) ddk.p(dpy.d, new byte[]{16, -24, 7, 24, 4}), cgk.p);
        } catch (ddu e) {
            throw new AssertionError("Could not parse proto flag \"9\"");
        }
    }

    @Override // defpackage.dnt
    public final dpy a(Context context) {
        return (dpy) a.b(context);
    }
}
