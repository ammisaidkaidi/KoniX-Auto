package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WifiConnectStatusMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final WifiConnectStatusMessage c;
    private static volatile ProtoParser e;
    public int a = 1;
    public String b = "";
    private int d;

    static {
        WifiConnectStatusMessage clbVar = new WifiConnectStatusMessage();
        c = clbVar;
        GeneratedMessageLite.D(WifiConnectStatusMessage.class, clbVar);
    }

    private WifiConnectStatusMessage() {
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
                return C(c, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001", new Object[]{"d", "a", ckg.j, "b"});
            case 3:
                return new WifiConnectStatusMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (WifiConnectStatusMessage.class) {
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
