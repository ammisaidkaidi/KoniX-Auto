package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSixIntsAndDgy extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgSixIntsAndDgy h;
    private static volatile ProtoParser i;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public ProtoMsgEightInts g;

    static {
        ProtoMsgSixIntsAndDgy dgwVar = new ProtoMsgSixIntsAndDgy();
        h = dgwVar;
        GeneratedMessageLite.D(ProtoMsgSixIntsAndDgy.class, dgwVar);
    }

    private ProtoMsgSixIntsAndDgy() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003င\u0003\u0004င\u0004\u0006ဉ\u0006\u0007င\u0002", new Object[]{"a", "b", dgh.g, "c", dgh.h, "e", "f", "g", "d"});
            case 3:
                return new ProtoMsgSixIntsAndDgy();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (ProtoMsgSixIntsAndDgy.class) {
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
