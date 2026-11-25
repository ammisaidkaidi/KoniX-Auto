package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgDbpByteStringInt extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgDbpByteStringInt d;
    private static volatile ProtoParser f;
    public ProtoMsgIntStringLongDbi a;
    public ByteString b = dcl.b;
    public int c;
    private int e;

    static {
        ProtoMsgDbpByteStringInt dbhVar = new ProtoMsgDbpByteStringInt();
        d = dbhVar;
        GeneratedMessageLite.D(ProtoMsgDbpByteStringInt.class, dbhVar);
    }

    private ProtoMsgDbpByteStringInt() {
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
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ဌ\u0002", new Object[]{"e", "a", "b", "c", ckg.p});
            case 3:
                return new ProtoMsgDbpByteStringInt();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoMsgDbpByteStringInt.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
