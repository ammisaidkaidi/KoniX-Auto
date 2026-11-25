package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgWithDboAndList extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgWithDboAndList d;
    private static volatile ProtoParser f;
    public ProtoMsgIntLongByteString a;
    public ProtobufList b = dfa.b;
    public int c;
    private int e;

    static {
        ProtoMsgWithDboAndList dbnVar = new ProtoMsgWithDboAndList();
        d = dbnVar;
        GeneratedMessageLite.D(ProtoMsgWithDboAndList.class, dbnVar);
    }

    private ProtoMsgWithDboAndList() {
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
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဌ\u0001", new Object[]{"e", "a", "b", ProtoMsgSelfNestedScalars.class, "c", ckg.s});
            case 3:
                return new ProtoMsgWithDboAndList();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoMsgWithDboAndList.class) {
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
