package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeConfigMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PhenotypeConfigMessage h;
    public static final ProtoParserFactory i;
    private static volatile ProtoParser j;
    public int a;
    public boolean d;
    public String b = "";
    public String c = "";
    public String e = "";
    public String f = "";
    public LazyStringList g = ddl.b;

    static {
        PhenotypeConfigMessage cdaVar = new PhenotypeConfigMessage();
        h = cdaVar;
        GeneratedMessageLite.D(PhenotypeConfigMessage.class, cdaVar);
        i = new ProtoParserFactory(ccs.c, cdaVar, cdaVar, new ProtoFieldNumber(ProtoFieldType.MESSAGE));
    }

    private PhenotypeConfigMessage() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006'", new Object[]{"a", "b", "c", "d", "e", "f", "g"});
            case 3:
                return new PhenotypeConfigMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (PhenotypeConfigMessage.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageSingleEnumFieldH);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
