package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeFlagMessage e;
    private static volatile ProtoParser f;
    public ProtoMsgIntStringInt b;
    public ProtoLiteTimestampField c;
    public String a = "";
    public String d = "";

    static {
        PhenotypeFlagMessage cVar = new PhenotypeFlagMessage();
        e = cVar;
        GeneratedMessageLite.D(PhenotypeFlagMessage.class, cVar);
    }

    private PhenotypeFlagMessage() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(e, "\u0000\u0004\u0000\u0000\u0002\b\u0004\u0000\u0000\u0000\u0002Ȉ\u0003\t\u0004\t\bȈ", new Object[]{"a", "b", "c", "d"});
            case 3:
                return new PhenotypeFlagMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (PhenotypeFlagMessage.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoFlagValueMessage);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
