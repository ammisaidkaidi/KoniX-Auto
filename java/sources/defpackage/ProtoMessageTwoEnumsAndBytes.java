package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageTwoEnumsAndBytes extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageTwoEnumsAndBytes d;
    private static volatile ProtoParser e;
    public ByteStringList a = deg.b;
    public ByteStringList b = deg.b;
    public LazyStringList c = ddl.b;

    static {
        ProtoMessageTwoEnumsAndBytes dpnVar = new ProtoMessageTwoEnumsAndBytes();
        d = dpnVar;
        GeneratedMessageLite.D(ProtoMessageTwoEnumsAndBytes.class, dpnVar);
    }

    private ProtoMessageTwoEnumsAndBytes() {
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
                return C(d, "\u0001\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0003\u0000\u0001%\u0002%\u0003'", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoMessageTwoEnumsAndBytes();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMessageTwoEnumsAndBytes.class) {
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
