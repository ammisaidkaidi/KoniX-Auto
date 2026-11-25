package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpt extends ddk implements des {
    public static final dpt c;
    private static volatile dex d;
    public ddp a = ddl.b;
    public ddp b = ddl.b;

    static {
        dpt dptVar = new dpt();
        c = dptVar;
        ddk.D(dpt.class, dptVar);
    }

    private dpt() {
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
                return C(c, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001'\u0002'", new Object[]{"a", "b"});
            case 3:
                return new dpt();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (dpt.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
