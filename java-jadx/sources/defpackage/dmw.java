package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmw implements dmv {
    public static final cgj a;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        try {
            a = e.c("15", (dpy) ddk.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.h);
            try {
                e.c("45357002", (bxe) ddk.p(bxe.a, new byte[]{8, 0, 18, 0, 24, 0, 32, 0, 40, 0, 48, 0, 56, 0, 64, 0}), cgk.g);
                try {
                    e.c("45355611", (bxe) ddk.p(bxe.a, new byte[]{8, 0, 18, 0, 24, 0, 32, 0, 40, 0, 48, 0, 56, 0, 64, 0}), cgk.g);
                } catch (ddu e2) {
                    throw new AssertionError("Could not parse proto flag \"45355611\"");
                }
            } catch (ddu e3) {
                throw new AssertionError("Could not parse proto flag \"45357002\"");
            }
        } catch (ddu e4) {
            throw new AssertionError("Could not parse proto flag \"15\"");
        }
    }

    @Override // defpackage.dmv
    public final dpy a(Context context) {
        return (dpy) a.b(context);
    }
}
