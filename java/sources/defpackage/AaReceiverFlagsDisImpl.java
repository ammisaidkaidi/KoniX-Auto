package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlagsDisImpl implements AaReceiverFlagsDis {
    public static final PhenotypeCombinedFlags a;

    static {
        CombinedFlagsFactory d = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        try {
            a = d.c("16", (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, new byte[0]), cgk.d);
        } catch (InvalidProtocolBufferException e) {
            throw new AssertionError("Could not parse proto flag \"16\"");
        }
    }

    @Override // defpackage.AaReceiverFlagsDis
    public final ProtoMsgSingleRepeatedField a() {
        return (ProtoMsgSingleRepeatedField) a.a();
    }
}
