package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgIntAndObject extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgIntAndObject c;
    private static volatile ProtoParser d;
    public int a = 0;
    public Object b;

    static {
        ProtoMsgIntAndObject dglVar = new ProtoMsgIntAndObject();
        c = dglVar;
        GeneratedMessageLite.D(ProtoMsgIntAndObject.class, dglVar);
    }

    private ProtoMsgIntAndObject() {
    }

    public static ProtoMsgHoldingMessageAndBool c() {
        return c.n();
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
                return C(c, "\u0001\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဿ\u0000\u0002ြ\u0000\u0003ြ\u0000", new Object[]{"b", "a", dgh.a, ProtoMsgTwoRepeatedFields.class, ProtoMsgRepeatedPairFields.class});
            case 3:
                return new ProtoMsgIntAndObject();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (ProtoMsgIntAndObject.class) {
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
