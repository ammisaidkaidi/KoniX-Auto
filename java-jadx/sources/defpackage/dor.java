package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dor extends ddk implements des {
    public static final dor e;
    private static volatile dex f;
    public int a;
    public int b;
    public long c;
    public dom d;

    static {
        dor dorVar = new dor();
        e = dorVar;
        ddk.D(dor.class, dorVar);
    }

    private dor() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001\u0003ဉ\u0002", new Object[]{"a", "b", "c", "d"});
            case 3:
                return new dor();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dor.class) {
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
