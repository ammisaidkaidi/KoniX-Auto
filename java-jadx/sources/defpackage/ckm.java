package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ckm extends ddk implements des {
    public static final ckm e;
    private static volatile dex f;
    public int a;
    public int b;
    public String c = "";
    public int d;

    static {
        ckm ckmVar = new ckm();
        e = ckmVar;
        ddk.D(ckm.class, ckmVar);
    }

    private ckm() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဌ\u0002", new Object[]{"a", "b", "c", "d", ckg.c});
            case 3:
                return new ckm();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (ckm.class) {
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
