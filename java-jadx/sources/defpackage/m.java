package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class m extends ddk implements des {
    public static final m e;
    private static volatile dex f;
    public d a;
    public j b;
    public ddr c = dfa.b;
    public b d;

    static {
        m mVar = new m();
        e = mVar;
        ddk.D(m.class, mVar);
    }

    private m() {
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
                return C(e, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001\t\u0002\t\u0003\u001b\u0005\t", new Object[]{"a", "b", "c", h.class, "d"});
            case 3:
                return new m();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (m.class) {
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
