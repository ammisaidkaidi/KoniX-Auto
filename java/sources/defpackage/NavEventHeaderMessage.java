package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavEventHeaderMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavEventHeaderMessage c;
    private static volatile ProtoParser d;
    public int a;
    public NavValueMessage b;

    static {
        NavEventHeaderMessage ckvVar = new NavEventHeaderMessage();
        c = ckvVar;
        GeneratedMessageLite.D(NavEventHeaderMessage.class, ckvVar);
    }

    private NavEventHeaderMessage() {
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
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"a", "b"});
            case 3:
                return new NavEventHeaderMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (NavEventHeaderMessage.class) {
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
