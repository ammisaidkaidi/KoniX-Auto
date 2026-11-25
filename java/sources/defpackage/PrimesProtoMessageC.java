package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesProtoMessageC extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PrimesProtoMessageC d;
    private static volatile ProtoParser f;
    public String a = "";
    public ProtobufList b = dfa.b;
    public boolean c;
    private int e;

    static {
        PrimesProtoMessageC bynVar = new PrimesProtoMessageC();
        d = bynVar;
        GeneratedMessageLite.D(PrimesProtoMessageC.class, bynVar);
    }

    private PrimesProtoMessageC() {
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
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"e", "a", "b", PrimesProtoMessageB.class, "c"});
            case 3:
                return new PrimesProtoMessageC();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (PrimesProtoMessageC.class) {
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
