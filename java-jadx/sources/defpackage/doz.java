package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class doz extends ddk implements des {
    public static final doz b;
    private static volatile dex d;
    private byte c = 2;
    public ddr a = dfa.b;

    static {
        doz dozVar = new doz();
        b = dozVar;
        ddk.D(doz.class, dozVar);
    }

    private doz() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.c);
            case 1:
            default:
                this.c = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(b, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001Л", new Object[]{"a", doy.class});
            case 3:
                return new doz();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (doz.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
