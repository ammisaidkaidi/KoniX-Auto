package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dov extends ddk implements des {
    public static final dov c;
    private static volatile dex d;
    public int a;
    public boolean b;

    static {
        dov dovVar = new dov();
        c = dovVar;
        ddk.D(dov.class, dovVar);
    }

    private dov() {
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
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"a", "b"});
            case 3:
                return new dov();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dov.class) {
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
