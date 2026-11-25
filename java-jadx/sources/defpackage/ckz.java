package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ckz extends ddk implements des {
    public static final ckz m;
    private static volatile dex n;
    public int a;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public ckx l;
    public int b = 1;
    public int c = 1;
    public int k = 1;

    static {
        ckz ckzVar = new ckz();
        m = ckzVar;
        ddk.D(ckz.class, ckzVar);
    }

    private ckz() {
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
                return C(m, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဋ\u0002\u0004ဋ\u0003\u0005ဋ\u0004\u0006ဋ\u0005\u0007ဋ\u0006\bဋ\u0007\tဋ\b\nဌ\t\u000bဉ\n", new Object[]{"a", "b", cky.c(), "c", ckg.h, "d", "e", "f", "g", "h", "i", "j", "k", ckg.a, "l"});
            case 3:
                return new ckz();
            case 4:
                return new ddf(m);
            case 5:
                return m;
            case 6:
                dex dexVar = n;
                if (dexVar == null) {
                    synchronized (ckz.class) {
                        dexVar = n;
                        if (dexVar == null) {
                            dexVar = new ddg(m);
                            n = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
