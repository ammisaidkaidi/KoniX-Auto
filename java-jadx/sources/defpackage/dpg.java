package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpg extends ddk implements des {
    public static final dpg f;
    private static volatile dex g;
    public int a;
    public long b;
    public boolean c;
    public int d;
    public String e = "";

    static {
        dpg dpgVar = new dpg();
        f = dpgVar;
        ddk.D(dpg.class, dpgVar);
    }

    private dpg() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003င\u0002\u0004ဈ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new dpg();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (dpg.class) {
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
