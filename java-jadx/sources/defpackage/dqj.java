package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dqj extends ddk implements des {
    public static final dqj f;
    private static volatile dex g;
    public dem a = dem.a;
    public dem b = dem.a;
    public ddr c = dfa.b;
    public ddp d = ddl.b;
    public ddr e = dfa.b;

    static {
        dqj dqjVar = new dqj();
        f = dqjVar;
        ddk.D(dqj.class, dqjVar);
    }

    private dqj() {
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
                return C(f, "\u0001\u0005\u0000\u0000\u0001\u0005\u0005\u0002\u0003\u0000\u00012\u00022\u0003\u001b\u0004'\u0005\u001b", new Object[]{"a", dqh.a, "b", dqi.a, "c", dqg.class, "d", "e", dqd.class});
            case 3:
                return new dqj();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (dqj.class) {
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
