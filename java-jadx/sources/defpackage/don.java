package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class don extends ddk implements des {
    public static final don e;
    private static volatile dex f;
    public int a;
    public ddr b = dfa.b;
    public ddr c = dfa.b;
    public dom d;

    static {
        don donVar = new don();
        e = donVar;
        ddk.D(don.class, donVar);
    }

    private don() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"a", "b", doq.class, "c", dol.class, "d"});
            case 3:
                return new don();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (don.class) {
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
