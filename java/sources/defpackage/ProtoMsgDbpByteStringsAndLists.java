package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgDbpByteStringsAndLists extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgDbpByteStringsAndLists h;
    private static volatile ProtoParser i;
    public int a;
    public ProtoMsgIntStringLongDbi b;
    public ByteString c = dcl.b;
    public ProtobufList d = dfa.b;
    public ByteString e = dcl.b;
    public ByteString f = dcl.b;
    public boolean g;

    static {
        ProtoMsgDbpByteStringsAndLists dbdVar = new ProtoMsgDbpByteStringsAndLists();
        h = dbdVar;
        GeneratedMessageLite.D(ProtoMsgDbpByteStringsAndLists.class, dbdVar);
    }

    private ProtoMsgDbpByteStringsAndLists() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003\u001b\u0004ည\u0002\u0006ည\u0004\u0007ဇ\u0005", new Object[]{"a", "b", "c", "d", ProtoMsgIntLongByteString.class, "e", "f", "g"});
            case 3:
                return new ProtoMsgDbpByteStringsAndLists();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (ProtoMsgDbpByteStringsAndLists.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageSingleEnumFieldH);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
