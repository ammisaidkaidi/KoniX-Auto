package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageIntAndString extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageIntAndString c;
    private static volatile ProtoParser d;
    public int a;
    public String b = "";

    static {
        ProtoMessageIntAndString dpjVar = new ProtoMessageIntAndString();
        c = dpjVar;
        GeneratedMessageLite.D(ProtoMessageIntAndString.class, dpjVar);
    }

    private ProtoMessageIntAndString() {
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
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"a", "b"});
            case 3:
                return new ProtoMessageIntAndString();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMessageIntAndString.class) {
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
