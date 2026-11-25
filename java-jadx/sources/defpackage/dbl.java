package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbl extends ddk implements des {
    public static final dbl b;
    private static volatile dex d;
    public dcl a = dcl.b;
    private int c;

    static {
        dbl dblVar = new dbl();
        b = dblVar;
        ddk.D(dbl.class, dblVar);
    }

    private dbl() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{"c", "a"});
            case 3:
                return new dbl();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dbl.class) {
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
