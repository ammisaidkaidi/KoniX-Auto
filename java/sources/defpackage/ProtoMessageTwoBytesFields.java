package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageTwoBytesFields extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageTwoBytesFields c;
    private static volatile ProtoParser d;
    public LazyStringList a = ddl.b;
    public LazyStringList b = ddl.b;

    static {
        ProtoMessageTwoBytesFields dptVar = new ProtoMessageTwoBytesFields();
        c = dptVar;
        GeneratedMessageLite.D(ProtoMessageTwoBytesFields.class, dptVar);
    }

    private ProtoMessageTwoBytesFields() {
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
                return C(c, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001'\u0002'", new Object[]{"a", "b"});
            case 3:
                return new ProtoMessageTwoBytesFields();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMessageTwoBytesFields.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(PhenotypeFlagMessage);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
