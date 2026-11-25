package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxe extends ddk implements des {
    public static final bxe a;
    private static volatile dex b;

    static {
        bxe bxeVar = new bxe();
        a = bxeVar;
        ddk.D(bxe.class, bxeVar);
    }

    private bxe() {
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
                return new bxe();
            case 4:
                return new ddf(a);
            case 5:
                return a;
            case 6:
                dex dexVar = b;
                if (dexVar == null) {
                    synchronized (bxe.class) {
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
