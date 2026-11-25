package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class g extends ddk implements des {
    public static final g c;
    private static volatile dex d;
    public int a;
    public boolean b;

    static {
        g gVar = new g();
        c = gVar;
        ddk.D(g.class, gVar);
    }

    private g() {
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
                return C(c, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u0007", new Object[]{"a", "b"});
            case 3:
                return new g();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (g.class) {
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
