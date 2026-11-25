package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dqa extends ddk implements des {
    public static final dqa d;
    private static volatile dex e;
    public int a;
    public long b;
    public int c;

    static {
        dqa dqaVar = new dqa();
        d = dqaVar;
        ddk.D(dqa.class, dqaVar);
    }

    private dqa() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဌ\u0001", new Object[]{"a", "b", "c", dgh.o});
            case 3:
                return new dqa();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dqa.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
