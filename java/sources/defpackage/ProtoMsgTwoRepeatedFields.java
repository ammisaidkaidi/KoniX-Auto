package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgTwoRepeatedFields extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgTwoRepeatedFields c;
    private static volatile ProtoParser d;
    public LazyStringList a = ddl.b;
    public ProtobufList b = dfa.b;

    static {
        ProtoMsgTwoRepeatedFields dgjVar = new ProtoMsgTwoRepeatedFields();
        c = dgjVar;
        GeneratedMessageLite.D(ProtoMsgTwoRepeatedFields.class, dgjVar);
    }

    private ProtoMsgTwoRepeatedFields() {
    }

    public static ProtoMsgHoldingMessageAndBool c() {
        return c.n();
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
                return C(c, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001,\u0002\u001b", new Object[]{"a", dgh.a, "b", ProtoMsgRepeatedPairFields.class});
            case 3:
                return new ProtoMsgTwoRepeatedFields();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMsgTwoRepeatedFields.class) {
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
