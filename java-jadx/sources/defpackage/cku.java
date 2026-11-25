package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cku extends ddk implements des {
    public static final cku f;
    private static volatile dex g;
    public int a;
    public ckq b;
    public cks c;
    public ddr d = dfa.b;
    public cki e;

    static {
        cku ckuVar = new cku();
        f = ckuVar;
        ddk.D(cku.class, ckuVar);
    }

    private cku() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ဉ\u0002", new Object[]{"a", "b", "c", "d", cko.class, "e"});
            case 3:
                return new cku();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (cku.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ddg(f);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
