package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbp extends ddk implements des {
    public static final dbp f;
    private static volatile dex g;
    public int a;
    public String b = "";
    public long c;
    public dbi d;
    public long e;

    static {
        dbp dbpVar = new dbp();
        f = dbpVar;
        ddk.D(dbp.class, dbpVar);
    }

    private dbp() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဉ\u0002\u0004ဎ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new dbp();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (dbp.class) {
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
