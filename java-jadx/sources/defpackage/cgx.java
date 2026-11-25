package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cgx extends ddk implements des {
    public static final cgx e;
    private static volatile dex f;
    public int a;
    public Object c;
    public int b = 0;
    public String d = "";

    static {
        cgx cgxVar = new cgx();
        e = cgxVar;
        ddk.D(cgx.class, cgxVar);
    }

    private cgx() {
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
                return C(e, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဵ\u0000\u0003်\u0000\u0004ဳ\u0000\u0005ျ\u0000\u0006ွ\u0000", new Object[]{"c", "b", "a", "d"});
            case 3:
                return new cgx();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (cgx.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(e);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
