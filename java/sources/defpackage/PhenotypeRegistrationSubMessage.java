package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationSubMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeRegistrationSubMessage e;
    private static volatile ProtoParser f;
    public int a;
    public Object c;
    public int b = 0;
    public String d = "";

    static {
        PhenotypeRegistrationSubMessage cgxVar = new PhenotypeRegistrationSubMessage();
        e = cgxVar;
        GeneratedMessageLite.D(PhenotypeRegistrationSubMessage.class, cgxVar);
    }

    private PhenotypeRegistrationSubMessage() {
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
                return C(e, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဵ\u0000\u0003်\u0000\u0004ဳ\u0000\u0005ျ\u0000\u0006ွ\u0000", new Object[]{"c", "b", "a", "d"});
            case 3:
                return new PhenotypeRegistrationSubMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (PhenotypeRegistrationSubMessage.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoFlagValueMessage);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
