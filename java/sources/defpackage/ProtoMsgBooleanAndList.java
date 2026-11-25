package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgBooleanAndList extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgBooleanAndList c;
    private static volatile ProtoParser e;
    public boolean a;
    public ProtobufList b = dfa.b;
    private int d;

    static {
        ProtoMsgBooleanAndList dbrVar = new ProtoMsgBooleanAndList();
        c = dbrVar;
        GeneratedMessageLite.D(ProtoMsgBooleanAndList.class, dbrVar);
    }

    private ProtoMsgBooleanAndList() {
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
                return C(c, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဇ\u0000\u0002\u001a", new Object[]{"d", "a", "b"});
            case 3:
                return new ProtoMsgBooleanAndList();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMsgBooleanAndList.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(PhenotypeFlagMessage);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
