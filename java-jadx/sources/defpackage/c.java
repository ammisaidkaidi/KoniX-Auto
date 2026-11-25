package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class c extends ddk implements des {
    public static final c e;
    private static volatile dex f;
    public d b;
    public n c;
    public String a = "";
    public String d = "";

    static {
        c cVar = new c();
        e = cVar;
        ddk.D(c.class, cVar);
    }

    private c() {
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
                return C(e, "\u0000\u0004\u0000\u0000\u0002\b\u0004\u0000\u0000\u0000\u0002Ȉ\u0003\t\u0004\t\bȈ", new Object[]{"a", "b", "c", "d"});
            case 3:
                return new c();
            case 4:
                return new ddf(e);
            case 5:
                return e;
            case 6:
                dex dexVar = f;
                if (dexVar == null) {
                    synchronized (c.class) {
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
