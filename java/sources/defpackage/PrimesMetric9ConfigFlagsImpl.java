package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric9ConfigFlagsImpl implements PrimesMetric9ConfigFlags {
    public static final PhenotypeCombinedFlags a;

    static {
        try {
            a = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e().c("9", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, -24, 7, 24, 4}), cgk.p);
        } catch (InvalidProtocolBufferException e) {
            throw new AssertionError("Could not parse proto flag \"9\"");
        }
    }

    @Override // defpackage.PrimesMetric9ConfigFlags
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
