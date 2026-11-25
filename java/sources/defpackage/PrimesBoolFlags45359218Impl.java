package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesBoolFlags45359218Impl implements PrimesBoolFlags45359218 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;
    public static final PhenotypeCombinedFlags c;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        a = e.b("45359218", true);
        b = e.b("45359255", false);
        c = e.b("36", true);
    }

    @Override // defpackage.PrimesBoolFlags45359218
    public final boolean a(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }

    @Override // defpackage.PrimesBoolFlags45359218
    public final boolean b(Context context) {
        return ((Boolean) b.b(context)).booleanValue();
    }

    @Override // defpackage.PrimesBoolFlags45359218
    public final boolean c(Context context) {
        return ((Boolean) c.b(context)).booleanValue();
    }
}
