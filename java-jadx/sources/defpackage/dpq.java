package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpq extends ddk implements des {
    public static final dpq o;
    private static volatile dex p;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public dpt i;
    public ddr j = dfa.b;
    public int k;
    public int l;
    public int m;
    public dpt n;

    static {
        dpq dpqVar = new dpq();
        o = dpqVar;
        ddk.D(dpq.class, dpqVar);
    }

    private dpq() {
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
                return C(o, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0003\u0004င\u0006\u0005\u001b\u0006င\b\u0007င\u0002\bင\u0004\tင\u0005\nဉ\u0007\u000bင\t\fင\n\rဉ\u000b", new Object[]{"a", "b", "c", "e", "h", "j", dpp.class, "k", "d", "f", "g", "i", "l", "m", "n"});
            case 3:
                return new dpq();
            case 4:
                return new ddf(o);
            case 5:
                return o;
            case 6:
                dex dexVar = p;
                if (dexVar == null) {
                    synchronized (dpq.class) {
                        dexVar = p;
                        if (dexVar == null) {
                            dexVar = new ddg(o);
                            p = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
