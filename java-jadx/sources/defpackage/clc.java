package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clc extends ddk implements des {
    public static final clc g;
    private static volatile dex h;
    public int a;
    public String b = "";
    public String c = "";
    public String d = "";
    public int e;
    public int f;

    static {
        clc clcVar = new clc();
        g = clcVar;
        ddk.D(clc.class, clcVar);
    }

    private clc() {
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
                return C(g, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဌ\u0003\u0005ဌ\u0004", new Object[]{"a", "b", "c", "d", "e", ckg.m, "f", ckg.i});
            case 3:
                return new clc();
            case 4:
                return new ddf(g);
            case 5:
                return g;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (clc.class) {
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
