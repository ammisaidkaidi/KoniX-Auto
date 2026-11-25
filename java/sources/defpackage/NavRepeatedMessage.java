package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavRepeatedMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavRepeatedMessage c;
    private static volatile ProtoParser d;
    public ProtobufList a = dfa.b;
    public ProtobufList b = dfa.b;

    static {
        NavRepeatedMessage cktVar = new NavRepeatedMessage();
        c = cktVar;
        GeneratedMessageLite.D(NavRepeatedMessage.class, cktVar);
    }

    private NavRepeatedMessage() {
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
                return C(c, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b", new Object[]{"a", NavStatusCompositeMessage.class, "b", NavigationTextMessage.class});
            case 3:
                return new NavRepeatedMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (NavRepeatedMessage.class) {
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
