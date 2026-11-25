package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric8ConfigFlagsImpl implements PrimesMetric8ConfigFlags {
    public static final PhenotypeCombinedFlags a;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        e.b("5", true);
        try {
            a = e.c("8", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, -24, 7, 24, 4}), cgk.l);
        } catch (InvalidProtocolBufferException e2) {
            throw new AssertionError("Could not parse proto flag \"8\"");
        }
    }

    @Override // defpackage.PrimesMetric8ConfigFlags
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
