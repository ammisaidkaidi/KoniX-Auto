package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpv extends ddk implements des {
    public static final dpv d;
    private static volatile dex g;
    public int a;
    public int b;
    private dpu e;
    private byte f = 2;
    public int c = 1;

    static {
        dpv dpvVar = new dpv();
        d = dpvVar;
        ddk.D(dpv.class, dpvVar);
    }

    private dpv() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.f);
            case 1:
            default:
                this.f = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ဌ\u0000\u0002င\u0001\u0003ᐉ\u0002", new Object[]{"a", "b", dgh.u, "c", "e"});
            case 3:
                return new dpv();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (dpv.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
