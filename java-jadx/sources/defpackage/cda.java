package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cda extends ddk implements des {
    public static final cda h;
    public static final dcx i;
    private static volatile dex j;
    public int a;
    public boolean d;
    public String b = "";
    public String c = "";
    public String e = "";
    public String f = "";
    public ddp g = ddl.b;

    static {
        cda cdaVar = new cda();
        h = cdaVar;
        ddk.D(cda.class, cdaVar);
        i = new dcx(ccs.c, cdaVar, cdaVar, new ddj(dgc.MESSAGE));
    }

    private cda() {
    }

    @Override // defpackage.ddk
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
                return new cda();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = j;
                if (dexVar == null) {
                    synchronized (cda.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ddg(h);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
