package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoLiteMessageBase extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoLiteMessageBase c;
    private static volatile ProtoParser d;
    public ProtobufList a = dfa.b;
    public String b = "";

    static {
        ProtoLiteMessageBase bVar = new ProtoLiteMessageBase();
        c = bVar;
        GeneratedMessageLite.D(ProtoLiteMessageBase.class, bVar);
    }

    private ProtoLiteMessageBase() {
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
                return C(c, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002Ȉ", new Object[]{"a", a.class, "b"});
            case 3:
                return new ProtoLiteMessageBase();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoLiteMessageBase.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(PhenotypeFlagMessage);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
