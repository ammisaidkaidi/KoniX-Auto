package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bym extends ddk implements des {
    public static final bym c;
    private static volatile dex e;
    public int a;
    public String b = "";
    private int d;

    static {
        bym bymVar = new bym();
        c = bymVar;
        ddk.D(bym.class, bymVar);
    }

    private bym() {
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
                return C(c, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001", new Object[]{"d", "a", ckg.b, "b"});
            case 3:
                return new bym();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (bym.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
