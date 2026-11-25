package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric10ConfigFlagsImpl implements PrimesMetric10ConfigFlags {
    public static final PhenotypeCombinedFlags a;

    static {
        try {
            a = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e().c("10", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, -24, 7, 24, 4}), cgk.q);
        } catch (InvalidProtocolBufferException e) {
            throw new AssertionError("Could not parse proto flag \"10\"");
        }
    }

    @Override // defpackage.PrimesMetric10ConfigFlags
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
