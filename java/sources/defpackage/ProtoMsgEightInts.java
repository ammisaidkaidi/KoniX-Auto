package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgEightInts extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgEightInts i;
    private static volatile ProtoParser j;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;

    static {
        ProtoMsgEightInts dgyVar = new ProtoMsgEightInts();
        i = dgyVar;
        GeneratedMessageLite.D(ProtoMsgEightInts.class, dgyVar);
    }

    private ProtoMsgEightInts() {
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
                return C(i, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001င\u0005\u0002င\u0006\u0003င\u0007\u0004င\u0000\u0005င\u0001\u0006င\u0002\u0007င\u0003", new Object[]{"a", "f", "g", "h", "b", "c", "d", "e"});
            case 3:
                return new ProtoMsgEightInts();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavInstructionTypeEnum);
            case 5:
                return i;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (ProtoMsgEightInts.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavInstructionTypeEnum);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
