package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dqd extends ddk implements des {
    public static final dqd d;
    private static volatile dex e;
    public int a;
    public ddp b = ddl.b;
    public int c;

    static {
        dqd dqdVar = new dqd();
        d = dqdVar;
        ddk.D(dqd.class, dqdVar);
    }

    private dqd() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0001\u0000\u0002,\u0003င\u0001", new Object[]{"a", "b", dgh.c, "c"});
            case 3:
                return new dqd();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dqd.class) {
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
