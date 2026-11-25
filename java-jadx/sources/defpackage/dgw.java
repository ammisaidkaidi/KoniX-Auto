package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgw extends ddk implements des {
    public static final dgw h;
    private static volatile dex i;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public dgy g;

    static {
        dgw dgwVar = new dgw();
        h = dgwVar;
        ddk.D(dgw.class, dgwVar);
    }

    private dgw() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003င\u0003\u0004င\u0004\u0006ဉ\u0006\u0007င\u0002", new Object[]{"a", "b", dgh.g, "c", dgh.h, "e", "f", "g", "d"});
            case 3:
                return new dgw();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (dgw.class) {
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
