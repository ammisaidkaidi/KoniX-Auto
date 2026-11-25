package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExperimentTokensProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ExperimentTokensProto a;
    private static volatile ProtoParser e;
    private int b;
    private FlagValueProto_cxp c;
    private byte d = 2;

    static {
        ExperimentTokensProto cxoVar = new ExperimentTokensProto();
        a = cxoVar;
        GeneratedMessageLite.D(ExperimentTokensProto.class, cxoVar);
    }

    private ExperimentTokensProto() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.d);
            case 1:
            default:
                this.d = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0001\u0000\u0001\r\r\u0001\u0000\u0000\u0001\rᐉ\u000b", new Object[]{"b", "c"});
            case 3:
                return new ExperimentTokensProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ExperimentTokensProto.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
