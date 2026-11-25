package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesFlags45357002Impl implements PrimesFlags45357002 {
    public static final PhenotypeCombinedFlags a;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        try {
            a = e.c("15", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.h);
            try {
                e.c("45357002", (PrimesProtoMessageA) GeneratedMessageLite.p(bxe.a, new byte[]{8, 0, 18, 0, 24, 0, 32, 0, 40, 0, 48, 0, 56, 0, 64, 0}), cgk.g);
                try {
                    e.c("45355611", (PrimesProtoMessageA) GeneratedMessageLite.p(bxe.a, new byte[]{8, 0, 18, 0, 24, 0, 32, 0, 40, 0, 48, 0, 56, 0, 64, 0}), cgk.g);
                } catch (InvalidProtocolBufferException e2) {
                    throw new AssertionError("Could not parse proto flag \"45355611\"");
                }
            } catch (InvalidProtocolBufferException e3) {
                throw new AssertionError("Could not parse proto flag \"45357002\"");
            }
        } catch (InvalidProtocolBufferException e4) {
            throw new AssertionError("Could not parse proto flag \"15\"");
        }
    }

    @Override // defpackage.PrimesFlags45357002
    public final PrimesMetricConfigProto a(Context context) {
        return (PrimesMetricConfigProto) a.b(context);
    }
}
