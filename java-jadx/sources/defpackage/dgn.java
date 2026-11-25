package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgn extends ddk implements des {
    public static final dgn m;
    private static volatile dex n;
    public int a;
    public int c;
    public long d;
    public long e;
    public long f;
    public int h;
    public int i;
    public dgl j;
    public String b = "";
    public String g = "";
    public ddq k = deg.b;
    public String l = "";

    static {
        dgn dgnVar = new dgn();
        m = dgnVar;
        ddk.D(dgn.class, dgnVar);
    }

    private dgn() {
    }

    public static /* synthetic */ void k(dgn dgnVar) {
        dgnVar.a |= 4;
        dgnVar.d = 2065731759L;
    }

    public final void c() {
        ddq ddqVar = this.k;
        if (ddqVar.c()) {
            return;
        }
        this.k = ddk.x(ddqVar);
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
                return C(m, "\u0001\u000b\u0000\u0001\u0001\r\u000b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0002\u0003ဂ\u0003\u0004ဂ\u0004\u0005ဈ\u0005\u0006ဌ\u0006\u0007ဌ\u0007\t\u0014\u000bဈ\u000b\fင\u0001\rဉ\t", new Object[]{"a", "b", "d", "e", "f", "g", "h", dgh.d, "i", dgh.c, "k", "l", "c", "j"});
            case 3:
                return new dgn();
            case 4:
                return new ddf(m);
            case 5:
                return m;
            case 6:
                dex dexVar = n;
                if (dexVar == null) {
                    synchronized (dgn.class) {
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
