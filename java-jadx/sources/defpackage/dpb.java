package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpb extends ddk implements des {
    public static final dpb f;
    private static volatile dex h;
    public int a;
    public long b;
    public int c;
    public dpf e;
    private byte g = 2;
    public ddr d = dfa.b;

    static {
        dpb dpbVar = new dpb();
        f = dpbVar;
        ddk.D(dpb.class, dpbVar);
    }

    private dpb() {
    }

    public final void c() {
        ddr ddrVar = this.d;
        if (ddrVar.c()) {
            return;
        }
        this.d = ddk.z(ddrVar);
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.g);
            case 1:
            default:
                this.g = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0006\u0004\u0000\u0001\u0001\u0001စ\u0000\u0002Л\u0003ဌ\u0001\u0006ဉ\u0004", new Object[]{"a", "b", "d", dpc.class, "c", dgh.p, "e"});
            case 3:
                return new dpb();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (dpb.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ddg(f);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
