package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoFlagValueMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoFlagValueMessage d;
    private static volatile ProtoParser e;
    public String a = "";
    public double b;
    public boolean c;

    static {
        ProtoFlagValueMessage eVar = new ProtoFlagValueMessage();
        d = eVar;
        GeneratedMessageLite.D(ProtoFlagValueMessage.class, eVar);
    }

    private ProtoFlagValueMessage() {
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
                return C(d, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0000\u0003\u0007", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoFlagValueMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoFlagValueMessage.class) {
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
