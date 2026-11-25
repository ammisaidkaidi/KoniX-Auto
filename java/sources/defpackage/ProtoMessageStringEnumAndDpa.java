package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageStringEnumAndDpa extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageStringEnumAndDpa g;
    private static volatile ProtoParser i;
    public int a;
    public int b;
    public int c;
    public String d;
    public ByteStringList e;
    public ProtoMessageTwoInts f;
    private byte h = 2;

    static {
        ProtoMessageStringEnumAndDpa doyVar = new ProtoMessageStringEnumAndDpa();
        g = doyVar;
        GeneratedMessageLite.D(ProtoMessageStringEnumAndDpa.class, doyVar);
    }

    private ProtoMessageStringEnumAndDpa() {
        ProtoDoubleArrayList dfaVar = dfa.b;
        this.d = "";
        this.e = deg.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return Byte.valueOf(this.h);
            case 1:
            default:
                this.h = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(g, "\u0001\u0005\u0000\u0001\u0005\u0016\u0005\u0000\u0001\u0000\u0005င\u0005\bဌ\b\u0011ဈ\u0013\u0015(\u0016ဉ\u0016", new Object[]{"a", "b", "c", dgh.n, "d", "e", "f"});
            case 3:
                return new ProtoMessageStringEnumAndDpa();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageIntAndBooleanG);
            case 5:
                return g;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (ProtoMessageStringEnumAndDpa.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageIntAndBooleanG);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
