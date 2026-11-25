package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NavDistanceMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final NavDistanceMessage d;
    private static volatile ProtoParser e;
    public int a;
    public NavValueMessage b;
    public long c;

    static {
        NavDistanceMessage cklVar = new NavDistanceMessage();
        d = cklVar;
        GeneratedMessageLite.D(NavDistanceMessage.class, cklVar);
    }

    private NavDistanceMessage() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0003ဂ\u0002", new Object[]{"a", "b", "c"});
            case 3:
                return new NavDistanceMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (NavDistanceMessage.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
