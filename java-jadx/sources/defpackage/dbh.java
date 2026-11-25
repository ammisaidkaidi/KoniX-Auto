package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbh extends ddk implements des {
    public static final dbh d;
    private static volatile dex f;
    public dbp a;
    public dcl b = dcl.b;
    public int c;
    private int e;

    static {
        dbh dbhVar = new dbh();
        d = dbhVar;
        ddk.D(dbh.class, dbhVar);
    }

    private dbh() {
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
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ဌ\u0002", new Object[]{"e", "a", "b", "c", ckg.p});
            case 3:
                return new dbh();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dbh.class) {
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
