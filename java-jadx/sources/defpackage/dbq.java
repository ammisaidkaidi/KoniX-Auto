package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbq extends ddk implements des {
    public static final dbq b;
    private static volatile dex d;
    public boolean a;
    private int c;

    static {
        dbq dbqVar = new dbq();
        b = dbqVar;
        ddk.D(dbq.class, dbqVar);
    }

    private dbq() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"c", "a"});
            case 3:
                return new dbq();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dbq.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
