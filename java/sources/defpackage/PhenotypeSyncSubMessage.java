package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeSyncSubMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeSyncSubMessage e;
    private static volatile ProtoParser f;
    public int a;
    public Object c;
    public int b = 0;
    public String d = "";

    static {
        PhenotypeSyncSubMessage cenVar = new PhenotypeSyncSubMessage();
        e = cenVar;
        GeneratedMessageLite.D(PhenotypeSyncSubMessage.class, cenVar);
    }

    private PhenotypeSyncSubMessage() {
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
                return C(e, "\u0001\u0006\u0001\u0001\u0001\n\u0006\u0000\u0000\u0000\u0001း\u0000\u0002်\u0000\u0003ဳ\u0000\u0004ျ\u0000\u0005ွ\u0000\nဈ\u0000", new Object[]{"c", "b", "a", "d"});
            case 3:
                return new PhenotypeSyncSubMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (PhenotypeSyncSubMessage.class) {
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
