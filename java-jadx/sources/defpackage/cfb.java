package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cfb extends ddk implements des {
    public static final cfb d;
    private static volatile dex e;
    public int a;
    public ddr b = dfa.b;
    public String c = "";

    static {
        cfb cfbVar = new cfb();
        d = cfbVar;
        ddk.D(cfb.class, cfbVar);
    }

    private cfb() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001a\u0002ဈ\u0000", new Object[]{"a", "b", "c"});
            case 3:
                return new cfb();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (cfb.class) {
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
