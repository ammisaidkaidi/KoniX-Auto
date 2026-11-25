package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpr extends ddk implements des {
    public static final dpr d;
    private static volatile dex e;
    public int a;
    public String b = "";
    public ddq c = deg.b;

    static {
        dpr dprVar = new dpr();
        d = dprVar;
        ddk.D(dpr.class, dprVar);
    }

    private dpr() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0003(", new Object[]{"a", "b", "c"});
            case 3:
                return new dpr();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dpr.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
