package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgConfigWithDglChild extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgConfigWithDglChild m;
    private static volatile ProtoParser n;
    public int a;
    public int c;
    public long d;
    public long e;
    public long f;
    public int h;
    public int i;
    public ProtoMsgIntAndObject j;
    public String b = "";
    public String g = "";
    public ByteStringList k = deg.b;
    public String l = "";

    static {
        ProtoMsgConfigWithDglChild dgnVar = new ProtoMsgConfigWithDglChild();
        m = dgnVar;
        GeneratedMessageLite.D(ProtoMsgConfigWithDglChild.class, dgnVar);
    }

    private ProtoMsgConfigWithDglChild() {
    }

    public static /* synthetic */ void k(ProtoMsgConfigWithDglChild dgnVar) {
        dgnVar.a |= 4;
        dgnVar.d = 2065731759L;
    }

    public final void c() {
        ByteStringList ddqVar = this.k;
        if (ddqVar.c()) {
            return;
        }
        this.k = GeneratedMessageLite.x(ddqVar);
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
                return C(m, "\u0001\u000b\u0000\u0001\u0001\r\u000b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0002\u0003ဂ\u0003\u0004ဂ\u0004\u0005ဈ\u0005\u0006ဌ\u0006\u0007ဌ\u0007\t\u0014\u000bဈ\u000b\fင\u0001\rဉ\t", new Object[]{"a", "b", "d", "e", "f", "g", "h", dgh.d, "i", dgh.c, "k", "l", "c", "j"});
            case 3:
                return new ProtoMsgConfigWithDglChild();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoCompositeMessageM);
            case 5:
                return m;
            case 6:
                ProtoParser dexVar = n;
                if (dexVar == null) {
                    synchronized (ProtoMsgConfigWithDglChild.class) {
                        dexVar = n;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoCompositeMessageM);
                            n = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
