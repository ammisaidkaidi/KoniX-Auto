package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxs extends ddk implements des {
    public static final cxs f;
    private static volatile dex h;
    public int a;
    public int e;
    private byte g = 2;
    public String b = "";
    public String c = "";
    public String d = "";

    static {
        cxs cxsVar = new cxs();
        f = cxsVar;
        ddk.D(cxs.class, cxsVar);
    }

    private cxs() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.g);
            case 1:
            default:
                this.g = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(f, "\u0001\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0003\u0005ᔈ\u0000\u0006ᔈ\u0001\u0007ဈ\u0002\bᔄ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new cxs();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (cxs.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ddg(f);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
