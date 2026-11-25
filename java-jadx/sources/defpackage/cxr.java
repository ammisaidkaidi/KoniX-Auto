package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxr extends ddk implements des {
    public static final cxr a;
    private static volatile dex h;
    private int b;
    private cxq c;
    private int e;
    private cxu f;
    private byte g = 2;
    private String d = "";

    static {
        cxr cxrVar = new cxr();
        a = cxrVar;
        ddk.D(cxr.class, cxrVar);
    }

    private cxr() {
        dfa dfaVar = dfa.b;
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
                return C(a, "\u0001\u0004\u0000\u0001\u0001\b\u0004\u0000\u0000\u0004\u0001ᔉ\u0000\u0002ᔈ\u0001\u0003ᔄ\u0002\bᐉ\n", new Object[]{"b", "c", "d", "e", "f"});
            case 3:
                return new cxr();
            case 4:
                return new ddf(a);
            case 5:
                return a;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (cxr.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ddg(a);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
