package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavValueMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavValueMessage e;
    private static volatile ProtoParser f;
    public int a;
    public int b;
    public String c = "";
    public int d;

    static {
        NavValueMessage ckmVar = new NavValueMessage();
        e = ckmVar;
        GeneratedMessageLite.D(NavValueMessage.class, ckmVar);
    }

    private NavValueMessage() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဌ\u0002", new Object[]{"a", "b", "c", "d", ckg.c});
            case 3:
                return new NavValueMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (NavValueMessage.class) {
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
