package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgl extends ddk implements des {
    public static final dgl c;
    private static volatile dex d;
    public int a = 0;
    public Object b;

    static {
        dgl dglVar = new dgl();
        c = dglVar;
        ddk.D(dgl.class, dglVar);
    }

    private dgl() {
    }

    public static ddf c() {
        return c.n();
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(c, "\u0001\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဿ\u0000\u0002ြ\u0000\u0003ြ\u0000", new Object[]{"b", "a", dgh.a, dgj.class, dgk.class});
            case 3:
                return new dgl();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dgl.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
