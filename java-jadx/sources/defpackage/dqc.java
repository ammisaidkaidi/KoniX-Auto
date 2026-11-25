package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dqc extends ddk implements des {
    public static final dqc e;
    private static volatile dex f;
    public int a;
    public int b;
    public dem c = dem.a;
    public ddp d;

    static {
        dqc dqcVar = new dqc();
        e = dqcVar;
        ddk.D(dqc.class, dqcVar);
    }

    private dqc() {
        dfa dfaVar = dfa.b;
        this.d = ddl.b;
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
                return C(e, "\u0001\u0003\u0000\u0001\u0002\u0005\u0003\u0001\u0001\u0000\u0002င\u0001\u00032\u0005'", new Object[]{"a", "b", "c", dqb.a, "d"});
            case 3:
                return new dqc();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dqc.class) {
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
