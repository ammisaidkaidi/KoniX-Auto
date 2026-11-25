package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ckj extends ddk implements des {
    public static final ckj e;
    private static volatile dex f;
    public int a;
    public ckv b;
    public ddr c = dfa.b;
    public cks d;

    static {
        ckj ckjVar = new ckj();
        e = ckjVar;
        ddk.D(ckj.class, ckjVar);
    }

    private ckj() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဉ\u0001", new Object[]{"a", "b", "c", ckl.class, "d"});
            case 3:
                return new ckj();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (ckj.class) {
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
