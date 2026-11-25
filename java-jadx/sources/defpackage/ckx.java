package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ckx extends ddk implements des {
    public static final ckx f;
    private static volatile dex g;
    public int a;
    public cke b;
    public cke c;
    public cke d;
    public int e;

    static {
        ckx ckxVar = new ckx();
        f = ckxVar;
        ddk.D(ckx.class, ckxVar);
    }

    private ckx() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဌ\u0003", new Object[]{"a", "b", "c", "d", "e", ckg.f});
            case 3:
                return new ckx();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (ckx.class) {
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
