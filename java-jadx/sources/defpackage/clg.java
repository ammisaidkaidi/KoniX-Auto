package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clg extends ddk implements des {
    public static final clg f;
    private static volatile dex g;
    public int a;
    public int b;
    public int c;
    public String d = "";
    public int e = 1;

    static {
        clg clgVar = new clg();
        f = clgVar;
        ddk.D(clg.class, clgVar);
    }

    private clg() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ဈ\u0002\u0004ဌ\u0003", new Object[]{"a", "b", "c", "d", "e", ckg.j});
            case 3:
                return new clg();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (clg.class) {
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
