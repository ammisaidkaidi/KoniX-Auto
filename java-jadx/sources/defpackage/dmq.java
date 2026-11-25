package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmq implements dmp {
    public static final cgj a;
    public static final cgj b;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        a = e.b("45352228", false);
        try {
            b = e.c("45352241", (doh) ddk.p(doh.b, new byte[0]), cgk.e);
        } catch (ddu e2) {
            throw new AssertionError("Could not parse proto flag \"45352241\"");
        }
    }

    @Override // defpackage.dmp
    public final doh a(Context context) {
        return (doh) b.b(context);
    }

    @Override // defpackage.dmp
    public final boolean b(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }
}
