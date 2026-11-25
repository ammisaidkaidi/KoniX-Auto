package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSingleBoolean extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgSingleBoolean b;
    private static volatile ProtoParser d;
    public boolean a;
    private int c;

    static {
        ProtoMsgSingleBoolean dbqVar = new ProtoMsgSingleBoolean();
        b = dbqVar;
        GeneratedMessageLite.D(ProtoMsgSingleBoolean.class, dbqVar);
    }

    private ProtoMsgSingleBoolean() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"c", "a"});
            case 3:
                return new ProtoMsgSingleBoolean();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMsgSingleBoolean.class) {
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
