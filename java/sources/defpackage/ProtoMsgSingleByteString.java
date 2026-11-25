package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSingleByteString extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgSingleByteString b;
    private static volatile ProtoParser d;
    public ByteString a = dcl.b;
    private int c;

    static {
        ProtoMsgSingleByteString dblVar = new ProtoMsgSingleByteString();
        b = dblVar;
        GeneratedMessageLite.D(ProtoMsgSingleByteString.class, dblVar);
    }

    private ProtoMsgSingleByteString() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{"c", "a"});
            case 3:
                return new ProtoMsgSingleByteString();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMsgSingleByteString.class) {
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
