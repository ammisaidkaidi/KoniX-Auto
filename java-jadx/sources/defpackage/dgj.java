package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgj extends ddk implements des {
    public static final dgj c;
    private static volatile dex d;
    public ddp a = ddl.b;
    public ddr b = dfa.b;

    static {
        dgj dgjVar = new dgj();
        c = dgjVar;
        ddk.D(dgj.class, dgjVar);
    }

    private dgj() {
    }

    public static ddf c() {
        return c.n();
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
                return C(c, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001,\u0002\u001b", new Object[]{"a", dgh.a, "b", dgk.class});
            case 3:
                return new dgj();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dgj.class) {
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
