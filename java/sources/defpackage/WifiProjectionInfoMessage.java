package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WifiProjectionInfoMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final WifiProjectionInfoMessage g;
    private static volatile ProtoParser h;
    public int a;
    public int b;
    public int c;
    public int d;
    public LazyStringList e = ddl.b;
    public VehicleInfoMessage f;

    static {
        WifiProjectionInfoMessage clfVar = new WifiProjectionInfoMessage();
        g = clfVar;
        GeneratedMessageLite.D(WifiProjectionInfoMessage.class, clfVar);
    }

    private WifiProjectionInfoMessage() {
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
                return C(g, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003ဌ\u0002\u0004\u0016\u0005ဉ\u0003", new Object[]{"a", "b", "c", "d", ckg.l, "e", "f"});
            case 3:
                return new WifiProjectionInfoMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageIntAndBooleanG);
            case 5:
                return g;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (WifiProjectionInfoMessage.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageIntAndBooleanG);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
