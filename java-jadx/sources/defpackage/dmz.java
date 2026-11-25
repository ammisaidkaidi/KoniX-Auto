package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmz implements dmy {
    public static final cgj a;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        try {
            e.c("14", (dpy) ddk.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.i);
            a = e.b("45350519", false);
            e.b("37", true);
            e.b("33", false);
        } catch (ddu e2) {
            throw new AssertionError("Could not parse proto flag \"14\"");
        }
    }

    @Override // defpackage.dmy
    public final boolean a(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }
}
