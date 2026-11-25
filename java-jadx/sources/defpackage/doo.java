package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class doo extends ddk implements des {
    public static final doo a;
    private static volatile dex b;

    static {
        doo dooVar = new doo();
        a = dooVar;
        ddk.D(doo.class, dooVar);
    }

    private doo() {
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
                return C(a, "\u0001\u0000", null);
            case 3:
                return new doo();
            case 4:
                return new ddf(a);
            case 5:
                return a;
            case 6:
                dex dexVar = b;
                if (dexVar == null) {
                    synchronized (doo.class) {
                        dexVar = b;
                        if (dexVar == null) {
                            dexVar = new ddg(a);
                            b = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
