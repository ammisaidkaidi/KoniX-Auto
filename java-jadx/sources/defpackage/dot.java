package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dot extends ddi implements des {
    public static final dot a;
    private static volatile dex c;
    private byte b = 2;

    static {
        dot dotVar = new dot();
        a = dotVar;
        ddk.D(dot.class, dotVar);
    }

    private dot() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.b);
            case 1:
            default:
                this.b = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0000", null);
            case 3:
                return new dot();
            case 4:
                return new ddh(a);
            case 5:
                return a;
            case 6:
                dex dexVar = c;
                if (dexVar == null) {
                    synchronized (dot.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ddg(a);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
