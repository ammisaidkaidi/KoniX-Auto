package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageLongAndTwoInts extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageLongAndTwoInts d;
    private static volatile ProtoParser e;
    public int a;
    public long b;
    public int c;

    static {
        ProtoMessageLongAndTwoInts dqaVar = new ProtoMessageLongAndTwoInts();
        d = dqaVar;
        GeneratedMessageLite.D(ProtoMessageLongAndTwoInts.class, dqaVar);
    }

    private ProtoMessageLongAndTwoInts() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဌ\u0001", new Object[]{"a", "b", "c", dgh.o});
            case 3:
                return new ProtoMessageLongAndTwoInts();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMessageLongAndTwoInts.class) {
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
