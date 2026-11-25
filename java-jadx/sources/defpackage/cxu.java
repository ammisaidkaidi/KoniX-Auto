package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxu extends ddk implements des {
    public static final cxu d;
    private static volatile dex f;
    public int a;
    public cxt b;
    private byte e = 2;
    public ddr c = dfa.b;

    static {
        cxu cxuVar = new cxu();
        d = cxuVar;
        ddk.D(cxu.class, cxuVar);
    }

    private cxu() {
    }

    public final void b() {
        ddr ddrVar = this.c;
        if (ddrVar.c()) {
            return;
        }
        this.c = ddk.z(ddrVar);
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.e);
            case 1:
            default:
                this.e = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0002\u0001ᔉ\u0000\u0002Л", new Object[]{"a", "b", "c", cxt.class});
            case 3:
                return new cxu();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (cxu.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
