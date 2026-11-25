package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ckt extends ddk implements des {
    public static final ckt c;
    private static volatile dex d;
    public ddr a = dfa.b;
    public ddr b = dfa.b;

    static {
        ckt cktVar = new ckt();
        c = cktVar;
        ddk.D(ckt.class, cktVar);
    }

    private ckt() {
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
                return C(c, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b", new Object[]{"a", cku.class, "b", ckk.class});
            case 3:
                return new ckt();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (ckt.class) {
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
