package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavStatusCompositeMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavStatusCompositeMessage f;
    private static volatile ProtoParser g;
    public int a;
    public NavigationIntsMessage b;
    public NavigationLabelMessage c;
    public ProtobufList d = dfa.b;
    public NavigationStatusListMessage e;

    static {
        NavStatusCompositeMessage ckuVar = new NavStatusCompositeMessage();
        f = ckuVar;
        GeneratedMessageLite.D(NavStatusCompositeMessage.class, ckuVar);
    }

    private NavStatusCompositeMessage() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ဉ\u0002", new Object[]{"a", "b", "c", "d", NavigationDataMessage.class, "e"});
            case 3:
                return new NavStatusCompositeMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (NavStatusCompositeMessage.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavManeuverTypeEnum);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
