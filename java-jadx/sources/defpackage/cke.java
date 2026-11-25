package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cke extends ddk implements des {
    public static final cke f;
    private static volatile dex g;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;

    static {
        cke ckeVar = new cke();
        f = ckeVar;
        ddk.D(cke.class, ckeVar);
    }

    private cke() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဋ\u0001\u0003ဋ\u0002\u0004ဋ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new cke();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = g;
                if (dexVar == null) {
                    synchronized (cke.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ddg(f);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
