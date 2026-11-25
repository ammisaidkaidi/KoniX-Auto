package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxn extends ddi implements des {
    public static final cxn a;
    private static volatile dex f;
    private int b;
    private cxo c;
    private byte e = 2;

    static {
        cxn cxnVar = new cxn();
        a = cxnVar;
        ddk.D(cxn.class, cxnVar);
    }

    private cxn() {
        dfa dfaVar = dfa.b;
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
                return C(a, "\u0001\u0001\u0000\u0001\u0010\u0010\u0001\u0000\u0000\u0001\u0010ᐉ\u0000", new Object[]{"b", "c"});
            case 3:
                return new cxn();
            case 4:
                return new ddh(a);
            case 5:
                return a;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (cxn.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(a);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
