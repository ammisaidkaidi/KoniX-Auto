package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbz extends ddk implements des {
    public static final dbz a;
    private static volatile dex b;

    static {
        dbz dbzVar = new dbz();
        a = dbzVar;
        ddk.D(dbz.class, dbzVar);
    }

    private dbz() {
        dcl dclVar = dcl.b;
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
                return C(a, "\u0000\u0000", null);
            case 3:
                return new dbz();
            case 4:
                return new ddf(a);
            case 5:
                return a;
            case 6:
                dex dexVar = b;
                if (dexVar == null) {
                    synchronized (dbz.class) {
                        dexVar = b;
                        if (dexVar == null) {
                            dexVar = new ddg(a);
                            b = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
