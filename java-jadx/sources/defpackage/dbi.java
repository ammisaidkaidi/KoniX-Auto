package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbi extends ddk implements des {
    public static final dbi c;
    private static volatile dex d;
    public int a;
    public int b;

    static {
        dbi dbiVar = new dbi();
        c = dbiVar;
        ddk.D(dbi.class, dbiVar);
    }

    private dbi() {
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
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"a", "b"});
            case 3:
                return new dbi();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dbi.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
