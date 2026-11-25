package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavigationIntsMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavigationIntsMessage e;
    private static volatile ProtoParser f;
    public int a;
    public int b;
    public int c;
    public int d;

    static {
        NavigationIntsMessage ckqVar = new NavigationIntsMessage();
        e = ckqVar;
        GeneratedMessageLite.D(NavigationIntsMessage.class, ckqVar);
    }

    private NavigationIntsMessage() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"a", "b", NavigationManeuverType.c(), "c", "d"});
            case 3:
                return new NavigationIntsMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (NavigationIntsMessage.class) {
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
