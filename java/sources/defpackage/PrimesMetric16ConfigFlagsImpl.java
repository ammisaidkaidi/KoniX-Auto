package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric16ConfigFlagsImpl implements PrimesMetric16ConfigFlags {
    public static final PhenotypeCombinedFlags a;

    static {
        try {
            a = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e().c("16", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.f);
        } catch (InvalidProtocolBufferException e) {
            throw new AssertionError("Could not parse proto flag \"16\"");
        }
    }

    @Override // defpackage.PrimesMetric16ConfigFlags
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
