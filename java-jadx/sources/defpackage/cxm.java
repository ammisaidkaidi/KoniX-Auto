package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxm extends ddk implements des {
    public static final cxm a;
    private static volatile dex h;
    private int b;
    private cxp c;
    private cxp d;
    private cxp e;
    private cxn f;
    private byte g = 2;

    static {
        cxm cxmVar = new cxm();
        a = cxmVar;
        ddk.D(cxm.class, cxmVar);
    }

    private cxm() {
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
                return C(a, "\u0001\u0004\u0000\u0001\u0001\b\u0004\u0000\u0000\u0004\u0001ᐉ\u0000\u0003ᐉ\u0001\u0004ᐉ\u0004\bᐉ\u0003", new Object[]{"b", "c", "d", "f", "e"});
            case 3:
                return new cxm();
            case 4:
                return new ddf(a);
            case 5:
                return a;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (cxm.class) {
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
