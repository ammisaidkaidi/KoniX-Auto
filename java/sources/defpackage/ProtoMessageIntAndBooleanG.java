package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageIntAndBooleanG extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageIntAndBooleanG c;
    private static volatile ProtoParser d;
    public int a;
    public boolean b;

    static {
        ProtoMessageIntAndBooleanG gVar = new ProtoMessageIntAndBooleanG();
        c = gVar;
        GeneratedMessageLite.D(ProtoMessageIntAndBooleanG.class, gVar);
    }

    private ProtoMessageIntAndBooleanG() {
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
                return C(c, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u0007", new Object[]{"a", "b"});
            case 3:
                return new ProtoMessageIntAndBooleanG();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMessageIntAndBooleanG.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(PhenotypeFlagMessage);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
