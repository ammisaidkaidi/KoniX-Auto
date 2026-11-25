package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgx extends ddk implements des {
    public static final dgx h;
    private static volatile dex i;
    public int a;
    public int b;
    public int c;
    public String d = "";
    public ddr e = dfa.b;
    public int f;
    public int g;

    static {
        dgx dgxVar = new dgx();
        h = dgxVar;
        ddk.D(dgx.class, dgxVar);
    }

    private dgx() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဈ\u0002\u0005\u001b\u0006ဌ\u0004\u0007င\u0005", new Object[]{"a", "b", ckg.q, "c", ckg.n, "d", "e", dgw.class, "f", dgh.i, "g"});
            case 3:
                return new dgx();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (dgx.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ddg(h);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
