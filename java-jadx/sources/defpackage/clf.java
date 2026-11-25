package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clf extends ddk implements des {
    public static final clf g;
    private static volatile dex h;
    public int a;
    public int b;
    public int c;
    public int d;
    public ddp e = ddl.b;
    public cka f;

    static {
        clf clfVar = new clf();
        g = clfVar;
        ddk.D(clf.class, clfVar);
    }

    private clf() {
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
                return C(g, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003ဌ\u0002\u0004\u0016\u0005ဉ\u0003", new Object[]{"a", "b", "c", "d", ckg.l, "e", "f"});
            case 3:
                return new clf();
            case 4:
                return new ddf(g);
            case 5:
                return g;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (clf.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ddg(g);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
