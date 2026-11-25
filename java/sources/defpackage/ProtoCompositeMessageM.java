package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoCompositeMessageM extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoCompositeMessageM e;
    private static volatile ProtoParser f;
    public ProtoMsgIntStringInt a;
    public ProtoMessageTwoIntsAndFlagValue b;
    public ProtobufList c = dfa.b;
    public ProtoLiteMessageBase d;

    static {
        ProtoCompositeMessageM mVar = new ProtoCompositeMessageM();
        e = mVar;
        GeneratedMessageLite.D(ProtoCompositeMessageM.class, mVar);
    }

    private ProtoCompositeMessageM() {
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
                return C(e, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001\t\u0002\t\u0003\u001b\u0005\t", new Object[]{"a", "b", "c", h.class, "d"});
            case 3:
                return new ProtoCompositeMessageM();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoCompositeMessageM.class) {
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
