package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesConfigFlags45352228Impl implements PrimesConfigFlags45352228 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;

    static {
        CombinedFlagsFactory e = new CombinedFlagsFactory("com.google.android.libraries.performance.primes").d().e();
        a = e.b("45352228", false);
        try {
            b = e.c("45352241", (ProtoBytesWrapperMessage) GeneratedMessageLite.p(doh.b, new byte[0]), cgk.e);
        } catch (InvalidProtocolBufferException e2) {
            throw new AssertionError("Could not parse proto flag \"45352241\"");
        }
    }

    @Override // defpackage.PrimesConfigFlags45352228
    public final ProtoBytesWrapperMessage a(Context context) {
        return (ProtoBytesWrapperMessage) b.b(context);
    }

    @Override // defpackage.PrimesConfigFlags45352228
    public final boolean b(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }
}
