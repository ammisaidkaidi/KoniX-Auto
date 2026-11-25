package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgs extends ddk implements des {
    public static final dgs d;
    private static volatile dex f;
    public int a;
    public int b;
    public dgr c;
    private byte e = 2;

    static {
        dgs dgsVar = new dgs();
        d = dgsVar;
        ddk.D(dgs.class, dgsVar);
    }

    private dgs() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.e);
            case 1:
            default:
                this.e = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ဌ\u0000\u0002ᐉ\u0003", new Object[]{"a", "b", dgh.f, "c"});
            case 3:
                return new dgs();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dgs.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
