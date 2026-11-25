package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpn extends ddk implements des {
    public static final dpn d;
    private static volatile dex e;
    public ddq a = deg.b;
    public ddq b = deg.b;
    public ddp c = ddl.b;

    static {
        dpn dpnVar = new dpn();
        d = dpnVar;
        ddk.D(dpn.class, dpnVar);
    }

    private dpn() {
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
                return C(d, "\u0001\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0003\u0000\u0001%\u0002%\u0003'", new Object[]{"a", "b", "c"});
            case 3:
                return new dpn();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dpn.class) {
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
