package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageSingleEnumField extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageSingleEnumField b;
    private static volatile ProtoParser d;
    private byte c = 2;
    public ProtobufList a = dfa.b;

    static {
        ProtoMessageSingleEnumField dozVar = new ProtoMessageSingleEnumField();
        b = dozVar;
        GeneratedMessageLite.D(ProtoMessageSingleEnumField.class, dozVar);
    }

    private ProtoMessageSingleEnumField() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.c);
            case 1:
            default:
                this.c = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(b, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001Л", new Object[]{"a", ProtoMessageStringEnumAndDpa.class});
            case 3:
                return new ProtoMessageSingleEnumField();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMessageSingleEnumField.class) {
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
