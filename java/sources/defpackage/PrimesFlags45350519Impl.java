package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesFlags45350519Impl implements PrimesFlags45350519 {
    public static final PhenotypeCombinedFlags a;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        try {
            e.c("14", (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, new byte[]{16, 0, 24, 2}), cgk.i);
            a = e.b("45350519", false);
            e.b("37", true);
            e.b("33", false);
        } catch (InvalidProtocolBufferException e2) {
            throw new AssertionError("Could not parse proto flag \"14\"");
        }
    }

    @Override // defpackage.PrimesFlags45350519
    public final boolean a(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }
}
