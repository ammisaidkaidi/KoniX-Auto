package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WifiStatusMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final WifiStatusMessage e;
    private static volatile ProtoParser f;
    public int a;
    public int c;
    public String b = "";
    public int d = 1;

    static {
        WifiStatusMessage cleVar = new WifiStatusMessage();
        e = cleVar;
        GeneratedMessageLite.D(WifiStatusMessage.class, cleVar);
    }

    private WifiStatusMessage() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဌ\u0002", new Object[]{"a", "b", "c", "d", ckg.j});
            case 3:
                return new WifiStatusMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (WifiStatusMessage.class) {
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
