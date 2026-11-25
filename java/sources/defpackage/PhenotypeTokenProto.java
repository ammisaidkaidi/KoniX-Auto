package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeTokenProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeTokenProto c;
    private static volatile ProtoParser d;
    public int a;
    public String b = "";

    static {
        PhenotypeTokenProto cgyVar = new PhenotypeTokenProto();
        c = cgyVar;
        GeneratedMessageLite.D(PhenotypeTokenProto.class, cgyVar);
    }

    private PhenotypeTokenProto() {
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
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"a", "b"});
            case 3:
                return new PhenotypeTokenProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (PhenotypeTokenProto.class) {
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
