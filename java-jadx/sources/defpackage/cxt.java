package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxt extends ddk implements des {
    public static final cxt f;
    private static volatile dex h;
    public int a;
    public long d;
    private byte g = 2;
    public String b = "";
    public String c = "";
    public ddr e = dfa.b;

    static {
        cxt cxtVar = new cxt();
        f = cxtVar;
        ddk.D(cxt.class, cxtVar);
    }

    private cxt() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001ᔈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004б", new Object[]{"a", "b", "c", "d", "e", cxs.class});
            case 3:
                return new cxt();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (cxt.class) {
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
