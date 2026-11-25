package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpf extends ddk implements des {
    private static volatile dex A;
    public static final dpf z;
    public int a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public boolean u;
    public int v;
    public dpd w;
    public dpd x;
    public dem y = dem.a;

    static {
        dpf dpfVar = new dpf();
        z = dpfVar;
        ddk.D(dpf.class, dpfVar);
    }

    private dpf() {
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
                return C(z, "\u0001\u0014\u0000\u0001\u0001\u0018\u0014\u0001\u0000\u0000\u0001ဂ\u0000\u0003ဂ\u0004\u0004ဂ\u0007\u0005ဂ\t\tဂ\n\nဂ\u000f\u000bဇ\u0010\fဉ\u0012\rဉ\u0013\u000eဂ\u0001\u000fဂ\u0002\u00102\u0011ဂ\u0005\u0012ဂ\b\u0013ဂ\u0006\u0014ဂ\u000b\u0015ဂ\f\u0016ဌ\u0011\u0017ဂ\r\u0018ဂ\u000e", new Object[]{"a", "b", "e", "h", "j", "k", "p", "u", "w", "x", "c", "d", "y", dpe.a, "f", "i", "g", "l", "m", "v", dgh.r, "n", "o"});
            case 3:
                return new dpf();
            case 4:
                return new ddf(z);
            case 5:
                return z;
            case 6:
                dex dexVar = A;
                if (dexVar == null) {
                    synchronized (dpf.class) {
                        dexVar = A;
                        if (dexVar == null) {
                            dexVar = new ddg(z);
                            A = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
