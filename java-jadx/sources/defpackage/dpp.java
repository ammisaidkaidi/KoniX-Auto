package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpp extends ddk implements des {
    public static final dpp e;
    private static volatile dex f;
    public int a;
    public int b;
    public int c;
    public int d;

    static {
        dpp dppVar = new dpp();
        e = dppVar;
        ddk.D(dpp.class, dppVar);
    }

    private dpp() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"a", "b", "c", "d"});
            case 3:
                return new dpp();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dpp.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(e);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
