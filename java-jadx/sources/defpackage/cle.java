package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cle extends ddk implements des {
    public static final cle e;
    private static volatile dex f;
    public int a;
    public int c;
    public String b = "";
    public int d = 1;

    static {
        cle cleVar = new cle();
        e = cleVar;
        ddk.D(cle.class, cleVar);
    }

    private cle() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဌ\u0002", new Object[]{"a", "b", "c", "d", ckg.j});
            case 3:
                return new cle();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (cle.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(e);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
