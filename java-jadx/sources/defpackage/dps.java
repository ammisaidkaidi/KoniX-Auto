package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dps extends ddk implements des {
    public static final dps k;
    private static volatile dex l;
    public int a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public ddr j = dfa.b;

    static {
        dps dpsVar = new dps();
        k = dpsVar;
        ddk.D(dps.class, dpsVar);
    }

    private dps() {
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
                return C(k, "\u0001\t\u0000\u0001\u0001\n\t\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\n\u001b", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", dpr.class});
            case 3:
                return new dps();
            case 4:
                return new ddf(k);
            case 5:
                return k;
            case 6:
                dex dexVar = l;
                if (dexVar == null) {
                    synchronized (dps.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ddg(k);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
