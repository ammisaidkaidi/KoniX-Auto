package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageBytesAndTwoInts extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageBytesAndTwoInts d;
    private static volatile ProtoParser e;
    public int a;
    public LazyStringList b = ddl.b;
    public int c;

    static {
        ProtoMessageBytesAndTwoInts dqdVar = new ProtoMessageBytesAndTwoInts();
        d = dqdVar;
        GeneratedMessageLite.D(ProtoMessageBytesAndTwoInts.class, dqdVar);
    }

    private ProtoMessageBytesAndTwoInts() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0001\u0000\u0002,\u0003င\u0001", new Object[]{"a", "b", dgh.c, "c"});
            case 3:
                return new ProtoMessageBytesAndTwoInts();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMessageBytesAndTwoInts.class) {
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
