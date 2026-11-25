package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric17ConfigFlagsImpl implements PrimesMetric17ConfigFlags {
    public static final PhenotypeCombinedFlags a;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        try {
            a = e.c("17", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, -24, 7, 24, 3}), cgk.o);
            e.b("38", false);
        } catch (InvalidProtocolBufferException e2) {
            throw new AssertionError("Could not parse proto flag \"17\"");
        }
    }

    @Override // defpackage.PrimesMetric17ConfigFlags
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
