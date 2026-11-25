package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSingleListField extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgSingleListField b;
    private static volatile ProtoParser c;
    public LazyStringList a = ddl.b;

    static {
        ProtoMsgSingleListField dgoVar = new ProtoMsgSingleListField();
        b = dgoVar;
        GeneratedMessageLite.D(ProtoMsgSingleListField.class, dgoVar);
    }

    private ProtoMsgSingleListField() {
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
                return C(b, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001'", new Object[]{"a"});
            case 3:
                return new ProtoMsgSingleListField();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (ProtoMsgSingleListField.class) {
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
