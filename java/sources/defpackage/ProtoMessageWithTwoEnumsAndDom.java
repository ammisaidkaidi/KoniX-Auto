package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageWithTwoEnumsAndDom extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageWithTwoEnumsAndDom e;
    private static volatile ProtoParser f;
    public int a;
    public ProtobufList b = dfa.b;
    public ProtobufList c = dfa.b;
    public ProtoMessageLongAndString d;

    static {
        ProtoMessageWithTwoEnumsAndDom donVar = new ProtoMessageWithTwoEnumsAndDom();
        e = donVar;
        GeneratedMessageLite.D(ProtoMessageWithTwoEnumsAndDom.class, donVar);
    }

    private ProtoMessageWithTwoEnumsAndDom() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"a", "b", ProtoMessageThreeIntsAndDom.class, "c", dol.class, "d"});
            case 3:
                return new ProtoMessageWithTwoEnumsAndDom();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoMessageWithTwoEnumsAndDom.class) {
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
