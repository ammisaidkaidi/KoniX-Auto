package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class doq extends ddk implements des {
    public static final doq e;
    private static volatile dex f;
    public int a;
    public int b;
    public int c;
    public dom d;

    static {
        doq doqVar = new doq();
        e = doqVar;
        ddk.D(doq.class, doqVar);
    }

    private doq() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ဉ\u0002", new Object[]{"a", "b", "c", "d"});
            case 3:
                return new doq();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (doq.class) {
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
