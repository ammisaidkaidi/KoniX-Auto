package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class d extends ddk implements des {
    public static final d d;
    private static volatile dex e;
    public int a;
    public String b = "";
    public int c;

    static {
        d dVar = new d();
        d = dVar;
        ddk.D(d.class, dVar);
    }

    private d() {
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
                return C(d, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002Ȉ\u0003\f", new Object[]{"a", "b", "c"});
            case 3:
                return new d();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (d.class) {
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
