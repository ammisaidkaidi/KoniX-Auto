package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class b extends ddk implements des {
    public static final b c;
    private static volatile dex d;
    public ddr a = dfa.b;
    public String b = "";

    static {
        b bVar = new b();
        c = bVar;
        ddk.D(b.class, bVar);
    }

    private b() {
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
                return C(c, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002Ȉ", new Object[]{"a", a.class, "b"});
            case 3:
                return new b();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (b.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
