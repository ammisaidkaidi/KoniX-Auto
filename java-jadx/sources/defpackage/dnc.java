package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dnc implements dnb {
    public static final cgj a;
    public static final cgj b;
    public static final cgj c;
    public static final cgj d;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        a = e.b("25", false);
        e.b("34", false);
        e.a("45351156", 10L);
        try {
            b = e.c("40", (byn) ddk.p(byn.d, new byte[]{10, 45, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 112, 114, 105, 109, 101, 115, 45, 106, 97, 110, 107, 45, 37, 80, 65, 67, 75, 65, 71, 69, 95, 78, 65, 77, 69, 37, 18, 35, 8, 2, 18, 31, 74, 60, 37, 69, 86, 69, 78, 84, 95, 78, 65, 77, 69, 37, 62, 35, 109, 105, 115, 115, 101, 100, 65, 112, 112, 70, 114, 97, 109, 101, 115, 18, 31, 8, 3, 18, 27, 74, 60, 37, 69, 86, 69, 78, 84, 95, 78, 65, 77, 69, 37, 62, 35, 116, 111, 116, 97, 108, 70, 114, 97, 109, 101, 115, 18, 38, 8, 5, 18, 34, 74, 60, 37, 69, 86, 69, 78, 84, 95, 78, 65, 77, 69, 37, 62, 35, 109, 97, 120, 70, 114, 97, 109, 101, 84, 105, 109, 101, 77, 105, 108, 108, 105, 115}), cgk.j);
            try {
                c = e.c("13", (dpy) ddk.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.k);
                new cgj(e.a, "39", "com.google.android.primes-jank-%PACKAGE_NAME%", new cfg(e.b, e.c, cgk.b, new cgm(String.class, 2)));
                d = e.b("45351799", false);
            } catch (ddu e2) {
                throw new AssertionError("Could not parse proto flag \"13\"");
            }
        } catch (ddu e3) {
            throw new AssertionError("Could not parse proto flag \"40\"");
        }
    }

    @Override // defpackage.dnb
    public final byn a(Context context) {
        return (byn) b.b(context);
    }

    @Override // defpackage.dnb
    public final dpy b(Context context) {
        return (dpy) c.b(context);
    }

    @Override // defpackage.dnb
    public final boolean c(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }

    @Override // defpackage.dnb
    public final boolean d(Context context) {
        return ((Boolean) d.b(context)).booleanValue();
    }
}
