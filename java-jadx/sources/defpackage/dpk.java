package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpk extends ddk implements des {
    public static final dpk g;
    private static volatile dex h;
    public int a;
    public int d;
    public long e;
    public String b = "";
    public String c = "";
    public String f = "";

    static {
        dpk dpkVar = new dpk();
        g = dpkVar;
        ddk.D(dpk.class, dpkVar);
    }

    private dpk() {
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
                return C(g, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဌ\u0002\u0004ဂ\u0003\u0005ဈ\u0004", new Object[]{"a", "b", "c", "d", dgh.s, "e", "f"});
            case 3:
                return new dpk();
            case 4:
                return new ddf(g);
            case 5:
                return g;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (dpk.class) {
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
