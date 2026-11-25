package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbn extends ddk implements des {
    public static final dbn d;
    private static volatile dex f;
    public dbo a;
    public ddr b = dfa.b;
    public int c;
    private int e;

    static {
        dbn dbnVar = new dbn();
        d = dbnVar;
        ddk.D(dbn.class, dbnVar);
    }

    private dbn() {
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
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဌ\u0001", new Object[]{"e", "a", "b", dbm.class, "c", ckg.s});
            case 3:
                return new dbn();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dbn.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
