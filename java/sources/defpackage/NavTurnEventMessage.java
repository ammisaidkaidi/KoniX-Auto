package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavTurnEventMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavTurnEventMessage e;
    private static volatile ProtoParser f;
    public int a;
    public NavEventHeaderMessage b;
    public ProtobufList c = dfa.b;
    public NavigationLabelMessage d;

    static {
        NavTurnEventMessage ckjVar = new NavTurnEventMessage();
        e = ckjVar;
        GeneratedMessageLite.D(NavTurnEventMessage.class, ckjVar);
    }

    private NavTurnEventMessage() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဉ\u0001", new Object[]{"a", "b", "c", NavDistanceMessage.class, "d"});
            case 3:
                return new NavTurnEventMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (NavTurnEventMessage.class) {
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
