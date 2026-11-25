package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgIntsStringAndList extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgIntsStringAndList h;
    private static volatile ProtoParser i;
    public int a;
    public int b;
    public int c;
    public String d = "";
    public ProtobufList e = dfa.b;
    public int f;
    public int g;

    static {
        ProtoMsgIntsStringAndList dgxVar = new ProtoMsgIntsStringAndList();
        h = dgxVar;
        GeneratedMessageLite.D(ProtoMsgIntsStringAndList.class, dgxVar);
    }

    private ProtoMsgIntsStringAndList() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဈ\u0002\u0005\u001b\u0006ဌ\u0004\u0007င\u0005", new Object[]{"a", "b", ckg.q, "c", ckg.n, "d", "e", ProtoMsgSixIntsAndDgy.class, "f", dgh.i, "g"});
            case 3:
                return new ProtoMsgIntsStringAndList();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (ProtoMsgIntsStringAndList.class) {
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
