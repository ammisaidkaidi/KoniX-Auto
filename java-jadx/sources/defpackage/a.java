package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class a extends ddk implements des {
    public static final a b;
    private static volatile dex c;
    public String a = "";

    static {
        a aVar = new a();
        b = aVar;
        ddk.D(a.class, aVar);
    }

    private a() {
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
                return C(b, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"a"});
            case 3:
                return new a();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = c;
                if (dexVar == null) {
                    synchronized (a.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
