package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpy extends ddk implements des {
    public static final dpy d;
    private static volatile dex e;
    public int a;
    public long b;
    public int c;

    static {
        dpy dpyVar = new dpy();
        d = dpyVar;
        ddk.D(dpy.class, dpyVar);
    }

    private dpy() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဂ\u0001\u0003ဌ\u0002", new Object[]{"a", "b", "c", dpw.a});
            case 3:
                return new dpy();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dpy.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
