package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ckq extends ddk implements des {
    public static final ckq e;
    private static volatile dex f;
    public int a;
    public int b;
    public int c;
    public int d;

    static {
        ckq ckqVar = new ckq();
        e = ckqVar;
        ddk.D(ckq.class, ckqVar);
    }

    private ckq() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"a", "b", ckp.c(), "c", "d"});
            case 3:
                return new ckq();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (ckq.class) {
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
