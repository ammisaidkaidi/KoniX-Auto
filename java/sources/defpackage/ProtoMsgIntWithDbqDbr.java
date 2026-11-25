package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgIntWithDbqDbr extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgIntWithDbqDbr d;
    private static volatile ProtoParser e;
    public int a;
    public ProtoMsgBooleanAndList b;
    public ProtoMsgSingleBoolean c;

    static {
        ProtoMsgIntWithDbqDbr dbsVar = new ProtoMsgIntWithDbqDbr();
        d = dbsVar;
        GeneratedMessageLite.D(ProtoMsgIntWithDbqDbr.class, dbsVar);
    }

    private ProtoMsgIntWithDbqDbr() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoMsgIntWithDbqDbr();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMsgIntWithDbqDbr.class) {
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
