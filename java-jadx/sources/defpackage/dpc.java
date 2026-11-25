package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpc extends ddk implements des {
    public static final dpc k;
    private static volatile dex m;
    public int a;
    public long c;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public int j;
    private byte l = 2;
    public String b = "";
    public String d = "";

    static {
        dpc dpcVar = new dpc();
        k = dpcVar;
        ddk.D(dpc.class, dpcVar);
    }

    private dpc() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.l);
            case 1:
            default:
                this.l = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(k, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002စ\u0003\u0003စ\u0004\u0004ဂ\u0005\u0005ဂ\u0006\u0006ဂ\b\u0007ဌ\t\bစ\u0001\tဈ\u0002", new Object[]{"a", "b", "e", "f", "g", "h", "i", "j", dgh.q, "c", "d"});
            case 3:
                return new dpc();
            case 4:
                return new ddf(k);
            case 5:
                return k;
            case 6:
                dex dexVar = m;
                if (dexVar == null) {
                    synchronized (dpc.class) {
                        dexVar = m;
                        if (dexVar == null) {
                            dexVar = new ddg(k);
                            m = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
