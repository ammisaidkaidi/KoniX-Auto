package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byn extends ddk implements des {
    public static final byn d;
    private static volatile dex f;
    public String a = "";
    public ddr b = dfa.b;
    public boolean c;
    private int e;

    static {
        byn bynVar = new byn();
        d = bynVar;
        ddk.D(byn.class, bynVar);
    }

    private byn() {
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
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"e", "a", "b", bym.class, "c"});
            case 3:
                return new byn();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (byn.class) {
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
