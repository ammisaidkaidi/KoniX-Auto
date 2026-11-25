package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class e extends ddk implements des {
    public static final e d;
    private static volatile dex e;
    public String a = "";
    public double b;
    public boolean c;

    static {
        e eVar = new e();
        d = eVar;
        ddk.D(e.class, eVar);
    }

    private e() {
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
                return C(d, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0000\u0003\u0007", new Object[]{"a", "b", "c"});
            case 3:
                return new e();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (e.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
