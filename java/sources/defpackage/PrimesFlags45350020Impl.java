package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesFlags45350020Impl implements PrimesFlags45350020 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;
    public static final PhenotypeCombinedFlags c;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        e.b("45350020", false);
        e.b("2", true);
        a = e.b("3", false);
        b = e.a("45357887", 1L);
        try {
            c = e.c("19", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.n);
        } catch (InvalidProtocolBufferException e2) {
            throw new AssertionError("Could not parse proto flag \"19\"");
        }
    }

    @Override // defpackage.PrimesFlags45350020
    public final long a(Context context) {
        return ((Long) b.b(context)).longValue();
    }

    @Override // defpackage.PrimesFlags45350020
    public final PrimesMetricConfigProto b(Context context) {
        return (PrimesMetricConfigProto) c.b(context);
    }

    @Override // defpackage.PrimesFlags45350020
    public final boolean c(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }
}
