package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageSingleEnumFieldH extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageSingleEnumFieldH b;
    private static volatile ProtoParser c;
    public ProtobufList a = dfa.b;

    static {
        ProtoMessageSingleEnumFieldH hVar = new ProtoMessageSingleEnumFieldH();
        b = hVar;
        GeneratedMessageLite.D(ProtoMessageSingleEnumFieldH.class, hVar);
    }

    private ProtoMessageSingleEnumFieldH() {
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
                return C(b, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"a", g.class});
            case 3:
                return new ProtoMessageSingleEnumFieldH();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (ProtoMessageSingleEnumFieldH.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoLiteMessageBase);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
