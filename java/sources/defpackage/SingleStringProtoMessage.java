package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SingleStringProtoMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final SingleStringProtoMessage b;
    private static volatile ProtoParser c;
    public String a = "";

    static {
        SingleStringProtoMessage aVar = new SingleStringProtoMessage();
        b = aVar;
        GeneratedMessageLite.D(SingleStringProtoMessage.class, aVar);
    }

    private SingleStringProtoMessage() {
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
                return C(b, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"a"});
            case 3:
                return new SingleStringProtoMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (SingleStringProtoMessage.class) {
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
