package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbs extends ddk implements des {
    public static final dbs d;
    private static volatile dex e;
    public int a;
    public dbr b;
    public dbq c;

    static {
        dbs dbsVar = new dbs();
        d = dbsVar;
        ddk.D(dbs.class, dbsVar);
    }

    private dbs() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"a", "b", "c"});
            case 3:
                return new dbs();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dbs.class) {
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
