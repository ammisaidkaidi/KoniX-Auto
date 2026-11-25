package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgManyMixedFields extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgManyMixedFields p;
    private static volatile ProtoParser u;
    public int a;
    public Object c;
    public int e;
    public boolean f;
    public boolean j;
    public int k;
    public int l;
    public boolean m;
    public long n;
    public int b = 0;
    public String d = "";
    public ProtobufList g = dfa.b;
    public LazyStringList h = ddl.b;
    public ByteString i = dcl.b;
    public ByteString o = dcl.b;

    static {
        ProtoMsgManyMixedFields dbtVar = new ProtoMsgManyMixedFields();
        p = dbtVar;
        GeneratedMessageLite.D(ProtoMsgManyMixedFields.class, dbtVar);
    }

    private ProtoMsgManyMixedFields() {
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
                return C(p, "\u0001\u000e\u0001\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002င\u0001\u0003\u001a\u0004'\u0005ည\u0003\u0006ဇ\u0004\u0007ျ\u0000\bဌ\u0007\tဌ\b\nျ\u0000\u000bဇ\u0002\fဇ\t\rဎ\n\u000eည\u000b", new Object[]{"c", "b", "a", "d", "e", "g", "h", "i", "j", "k", dgh.b, "l", ckg.u, "f", "m", "n", "o"});
            case 3:
                return new ProtoMsgManyMixedFields();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(IcuConfigProperties);
            case 5:
                return p;
            case 6:
                ProtoParser dexVar = u;
                if (dexVar == null) {
                    synchronized (ProtoMsgManyMixedFields.class) {
                        dexVar = u;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(IcuConfigProperties);
                            u = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
