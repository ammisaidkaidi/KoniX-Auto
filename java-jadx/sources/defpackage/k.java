package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class k extends ddk implements des {
    public static final k e;
    private static volatile dex f;
    public ddr a = dfa.b;
    public ddr b = dfa.b;
    public l c;
    public int d;

    static {
        k kVar = new k();
        e = kVar;
        ddk.D(k.class, kVar);
    }

    private k() {
    }

    public final void b() {
        ddr ddrVar = this.a;
        if (ddrVar.c()) {
            return;
        }
        this.a = ddk.z(ddrVar);
    }

    public final void c() {
        ddr ddrVar = this.b;
        if (ddrVar.c()) {
            return;
        }
        this.b = ddk.z(ddrVar);
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
                return C(e, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\t\u0004\f", new Object[]{"a", m.class, "b", c.class, "c", "d"});
            case 3:
                return new k();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (k.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(e);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
