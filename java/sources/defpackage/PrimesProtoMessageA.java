package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesProtoMessageA extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PrimesProtoMessageA a;
    private static volatile ProtoParser b;

    static {
        PrimesProtoMessageA bxeVar = new PrimesProtoMessageA();
        a = bxeVar;
        GeneratedMessageLite.D(PrimesProtoMessageA.class, bxeVar);
    }

    private PrimesProtoMessageA() {
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
                return C(a, "\u0001\u0000", null);
            case 3:
                return new PrimesProtoMessageA();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = b;
                if (dexVar == null) {
                    synchronized (PrimesProtoMessageA.class) {
                        dexVar = b;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            b = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
