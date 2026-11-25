package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgIntLongByteString extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgIntLongByteString d;
    private static volatile ProtoParser e;
    public int a;
    public long b;
    public ByteString c = dcl.b;

    static {
        ProtoMsgIntLongByteString dboVar = new ProtoMsgIntLongByteString();
        d = dboVar;
        GeneratedMessageLite.D(ProtoMsgIntLongByteString.class, dboVar);
    }

    private ProtoMsgIntLongByteString() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ည\u0001", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoMsgIntLongByteString();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMsgIntLongByteString.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
