package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class doh extends ddk implements des {
    public static final doh b;
    private static volatile dex c;
    public ddp a = ddl.b;

    static {
        doh dohVar = new doh();
        b = dohVar;
        ddk.D(doh.class, dohVar);
    }

    private doh() {
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
                return C(b, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"a", dgh.k});
            case 3:
                return new doh();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = c;
                if (dexVar == null) {
                    synchronized (doh.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
