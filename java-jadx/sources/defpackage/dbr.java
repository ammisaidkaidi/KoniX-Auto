package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbr extends ddk implements des {
    public static final dbr c;
    private static volatile dex e;
    public boolean a;
    public ddr b = dfa.b;
    private int d;

    static {
        dbr dbrVar = new dbr();
        c = dbrVar;
        ddk.D(dbr.class, dbrVar);
    }

    private dbr() {
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
                return C(c, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဇ\u0000\u0002\u001a", new Object[]{"d", "a", "b"});
            case 3:
                return new dbr();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dbr.class) {
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
