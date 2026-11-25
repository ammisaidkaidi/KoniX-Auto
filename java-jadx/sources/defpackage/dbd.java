package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbd extends ddk implements des {
    public static final dbd h;
    private static volatile dex i;
    public int a;
    public dbp b;
    public dcl c = dcl.b;
    public ddr d = dfa.b;
    public dcl e = dcl.b;
    public dcl f = dcl.b;
    public boolean g;

    static {
        dbd dbdVar = new dbd();
        h = dbdVar;
        ddk.D(dbd.class, dbdVar);
    }

    private dbd() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003\u001b\u0004ည\u0002\u0006ည\u0004\u0007ဇ\u0005", new Object[]{"a", "b", "c", "d", dbo.class, "e", "f", "g"});
            case 3:
                return new dbd();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (dbd.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ddg(h);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
