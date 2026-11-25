package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageLongAndString extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageLongAndString d;
    private static volatile ProtoParser e;
    public int a;
    public long b;
    public String c = "";

    static {
        ProtoMessageLongAndString domVar = new ProtoMessageLongAndString();
        d = domVar;
        GeneratedMessageLite.D(ProtoMessageLongAndString.class, domVar);
    }

    private ProtoMessageLongAndString() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001စ\u0000\u0002ဈ\u0001", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoMessageLongAndString();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMessageLongAndString.class) {
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
