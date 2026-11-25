package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdl extends ddk implements des {
    public static final cdl j;
    private static volatile dex l;
    public int a;
    public dos b;
    public long c;
    public long d;
    public long e;
    public long f;
    public int g;
    public dot i;
    private byte k = 2;
    public String h = "";

    static {
        cdl cdlVar = new cdl();
        j = cdlVar;
        ddk.D(cdl.class, cdlVar);
    }

    private cdl() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.k);
            case 1:
            default:
                this.k = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(j, "\u0001\b\u0000\u0001\u0001\t\b\u0000\u0000\u0001\u0001ဉ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005စ\u0004\u0006င\u0005\u0007ဈ\u0006\tᐉ\b", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i"});
            case 3:
                return new cdl();
            case 4:
                return new ddf(j);
            case 5:
                return j;
            case 6:
                dex dexVar = l;
                if (dexVar == null) {
                    synchronized (cdl.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ddg(j);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
