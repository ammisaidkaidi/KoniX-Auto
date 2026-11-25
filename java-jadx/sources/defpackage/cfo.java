package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cfo extends ddk implements des {
    public static final cfo g;
    private static volatile dex i;
    public String a = "";
    public boolean b;
    public int c;
    public boolean d;
    public boolean e;
    public boolean f;
    private int h;

    static {
        cfo cfoVar = new cfo();
        g = cfoVar;
        ddk.D(cfo.class, cfoVar);
    }

    private cfo() {
        dfa dfaVar = dfa.b;
    }

    @Override // defpackage.ddk
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(g, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဌ\u0002\u0005ဇ\u0003\u0006ဇ\u0005\u0007ဇ\u0004", new Object[]{"h", "a", "b", "c", ckg.t, "d", "f", "e"});
            case 3:
                return new cfo();
            case 4:
                return new ddf(g);
            case 5:
                return g;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (cfo.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ddg(g);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
