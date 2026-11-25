package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgIntStringInt extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgIntStringInt d;
    private static volatile ProtoParser e;
    public int a;
    public String b = "";
    public int c;

    static {
        ProtoMsgIntStringInt dVar = new ProtoMsgIntStringInt();
        d = dVar;
        GeneratedMessageLite.D(ProtoMsgIntStringInt.class, dVar);
    }

    private ProtoMsgIntStringInt() {
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
                return C(d, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002Ȉ\u0003\f", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoMsgIntStringInt();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMsgIntStringInt.class) {
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
