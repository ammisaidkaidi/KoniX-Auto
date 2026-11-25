package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dqg extends ddk implements des {
    public static final dqg h;
    private static volatile dex i;
    public dem a = dem.a;
    public dem b = dem.a;
    public ddr c = dfa.b;
    public ddq d = deg.b;
    public ddp e = ddl.b;
    public ddp f = ddl.b;
    public ddq g = deg.b;

    static {
        dqg dqgVar = new dqg();
        h = dqgVar;
        ddk.D(dqg.class, dqgVar);
    }

    private dqg() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(h, "\u0001\u0007\u0000\u0000\u0002\n\u0007\u0002\u0005\u0000\u00022\u00032\u0006\u001b\u0007%\b'\t'\n%", new Object[]{"a", dqe.a, "b", dqf.a, "c", dqc.class, "d", "e", "f", "g"});
            case 3:
                return new dqg();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (dqg.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ddg(h);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
