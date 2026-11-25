package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ccs extends ddi implements des {
    public static final ccs c;
    private static volatile dex f;
    public int a;
    public dpz b;
    private byte e = 2;

    static {
        ccs ccsVar = new ccs();
        c = ccsVar;
        ddk.D(ccs.class, ccsVar);
    }

    private ccs() {
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
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"a", "b"});
            case 3:
                return new ccs();
            case 4:
                return new ddh(c);
            case 5:
                return c;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (ccs.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
