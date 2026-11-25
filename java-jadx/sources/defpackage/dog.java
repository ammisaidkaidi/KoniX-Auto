package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dog extends ddk implements des {
    public static final dog e;
    private static volatile dex f;
    public int a;
    public ddr b = dfa.b;
    public doh c;
    public int d;

    static {
        dog dogVar = new dog();
        e = dogVar;
        ddk.D(dog.class, dogVar);
    }

    private dog() {
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
                return C(e, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000\u0003င\u0001", new Object[]{"a", "b", dof.class, "c", "d"});
            case 3:
                return new dog();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (dog.class) {
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
