package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cki extends ddk implements des {
    public static final cki b;
    private static volatile dex c;
    public ddr a = dfa.b;

    static {
        cki ckiVar = new cki();
        b = ckiVar;
        ddk.D(cki.class, ckiVar);
    }

    private cki() {
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
                return C(b, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"a"});
            case 3:
                return new cki();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = c;
                if (dexVar == null) {
                    synchronized (cki.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
