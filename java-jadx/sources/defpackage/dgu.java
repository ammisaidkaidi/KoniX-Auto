package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgu extends ddk implements des {
    public static final dgu f;
    private static volatile dex g;
    public int a;
    public int b;
    public String c = "";
    public long d;
    public long e;

    static {
        dgu dguVar = new dgu();
        f = dguVar;
        ddk.D(dgu.class, dguVar);
    }

    private dgu() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new dgu();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (dgu.class) {
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
