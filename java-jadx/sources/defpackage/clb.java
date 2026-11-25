package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clb extends ddk implements des {
    public static final clb c;
    private static volatile dex e;
    public int a = 1;
    public String b = "";
    private int d;

    static {
        clb clbVar = new clb();
        c = clbVar;
        ddk.D(clb.class, clbVar);
    }

    private clb() {
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
                return C(c, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001", new Object[]{"d", "a", ckg.j, "b"});
            case 3:
                return new clb();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (clb.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
