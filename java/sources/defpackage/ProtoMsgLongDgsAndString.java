package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgLongDgsAndString extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgLongDgsAndString g;
    private static volatile ProtoParser i;
    public int a;
    public long b;
    public ProtoMsgWithDgrChild c;
    public boolean f;
    private byte h = 2;
    public String d = "";
    public ByteString e = dcl.b;

    static {
        ProtoMsgLongDgsAndString dbfVar = new ProtoMsgLongDgsAndString();
        g = dbfVar;
        GeneratedMessageLite.D(ProtoMsgLongDgsAndString.class, dbfVar);
    }

    private ProtoMsgLongDgsAndString() {
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
                return C(g, "\u0001\u0005\u0000\u0001\u0002\u0007\u0005\u0000\u0000\u0001\u0002ဂ\u0001\u0004ᐉ\u0003\u0005ဈ\u0004\u0006ည\u0005\u0007ဇ\u0006", new Object[]{"a", "b", "c", "d", "e", "f"});
            case 3:
                return new ProtoMsgLongDgsAndString();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageIntAndBooleanG);
            case 5:
                return g;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (ProtoMsgLongDgsAndString.class) {
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
