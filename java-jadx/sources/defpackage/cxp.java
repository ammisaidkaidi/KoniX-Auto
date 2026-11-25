package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxp extends ddk implements des {
    public static final cxp a;
    private static volatile dex e;
    private int b;
    private cxq c;
    private byte d = 2;

    static {
        cxp cxpVar = new cxp();
        a = cxpVar;
        ddk.D(cxp.class, cxpVar);
    }

    private cxp() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.d);
            case 1:
            default:
                this.d = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"b", "c"});
            case 3:
                return new cxp();
            case 4:
                return new ddf(a);
            case 5:
                return a;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (cxp.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(a);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
