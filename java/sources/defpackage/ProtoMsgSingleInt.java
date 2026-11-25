package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSingleInt extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgSingleInt b;
    private static volatile ProtoParser d;
    public int a;
    private int c;

    static {
        ProtoMsgSingleInt dbgVar = new ProtoMsgSingleInt();
        b = dbgVar;
        GeneratedMessageLite.D(ProtoMsgSingleInt.class, dbgVar);
    }

    private ProtoMsgSingleInt() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"c", "a", ckg.o});
            case 3:
                return new ProtoMsgSingleInt();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMsgSingleInt.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoLiteMessageBase);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
