package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class j extends ddk implements des {
    public static final j d;
    private static volatile dex e;
    public int a;
    public int b;
    public e c;

    static {
        j jVar = new j();
        d = jVar;
        ddk.D(j.class, jVar);
    }

    private j() {
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
                return C(d, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\u0004\u0003\t", new Object[]{"a", "b", "c"});
            case 3:
                return new j();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (j.class) {
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
