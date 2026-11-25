package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cgw extends ddk implements des {
    public static final cgw h;
    private static volatile dex i;
    public int a;
    public long e;
    public long f;
    public String b = "";
    public dcl c = dcl.b;
    public String d = "";
    public ddr g = dfa.b;

    static {
        cgw cgwVar = new cgw();
        h = cgwVar;
        ddk.D(cgw.class, cgwVar);
    }

    private cgw() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005\u001b\u0006ဂ\u0004", new Object[]{"a", "b", "c", "d", "e", "g", cgx.class, "f"});
            case 3:
                return new cgw();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (cgw.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ddg(h);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
