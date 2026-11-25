package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric12ConfigFlagsImpl implements PrimesMetric12ConfigFlags {
    public static final PhenotypeCombinedFlags a;

    static {
        try {
            a = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e().c("12", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.m);
        } catch (InvalidProtocolBufferException e) {
            throw new AssertionError("Could not parse proto flag \"12\"");
        }
    }

    @Override // defpackage.PrimesMetric12ConfigFlags
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
