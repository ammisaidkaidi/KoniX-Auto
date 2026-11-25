package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpd extends ddk implements des {
    public static final dpd f;
    private static volatile dex g;
    public int a;
    public String b = "";
    public long c;
    public long d;
    public long e;

    static {
        dpd dpdVar = new dpd();
        f = dpdVar;
        ddk.D(dpd.class, dpdVar);
    }

    private dpd() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new dpd();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (dpd.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ddg(f);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
