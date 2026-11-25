package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbm extends ddk implements des {
    public static final dbm j;
    private static volatile dex l;
    public long b;
    public boolean c;
    public double d;
    public dbl f;
    public int g;
    public boolean h;
    public int i;
    private int k;
    public String a = "";
    public String e = "";

    static {
        dbm dbmVar = new dbm();
        j = dbmVar;
        ddk.D(dbm.class, dbmVar);
    }

    private dbm() {
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
                return C(j, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004က\u0003\u0005ဈ\u0004\u0006ဉ\u0005\u0007ဇ\u0007\bင\b\tဌ\u0006", new Object[]{"k", "a", "b", "c", "d", "e", "f", "h", "i", "g", ckg.r});
            case 3:
                return new dbm();
            case 4:
                return new ddf(j);
            case 5:
                return j;
            case 6:
                dex dexVar = l;
                if (dexVar == null) {
                    synchronized (dbm.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ddg(j);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
