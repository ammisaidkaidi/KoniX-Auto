package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bhk extends ddk implements des {
    public static final bhk b;
    private static volatile dex d;
    public int a;
    private int c;

    static {
        bhk bhkVar = new bhk();
        b = bhkVar;
        ddk.D(bhk.class, bhkVar);
    }

    private bhk() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"c", "a", dgq.c()});
            case 3:
                return new bhk();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = d;
                if (dexVar == null) {
                    synchronized (bhk.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
