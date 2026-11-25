package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbb extends ddk implements des {
    public static final dbb b;
    private static volatile dex d;
    public long a = -1;
    private int c;

    static {
        dbb dbbVar = new dbb();
        b = dbbVar;
        ddk.D(dbb.class, dbbVar);
    }

    private dbb() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0000\u0004ဂ\u0003", new Object[]{"c", "a"});
            case 3:
                return new dbb();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dbb.class) {
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
