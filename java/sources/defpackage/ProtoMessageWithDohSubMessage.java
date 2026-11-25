package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageWithDohSubMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageWithDohSubMessage e;
    private static volatile ProtoParser f;
    public int a;
    public ProtobufList b = dfa.b;
    public ProtoBytesWrapperMessage c;
    public int d;

    static {
        ProtoMessageWithDohSubMessage dogVar = new ProtoMessageWithDohSubMessage();
        e = dogVar;
        GeneratedMessageLite.D(ProtoMessageWithDohSubMessage.class, dogVar);
    }

    private ProtoMessageWithDohSubMessage() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000\u0003င\u0001", new Object[]{"a", "b", ProtoMessageStringAndLongCounters.class, "c", "d"});
            case 3:
                return new ProtoMessageWithDohSubMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoMessageWithDohSubMessage.class) {
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
