package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dok extends ddk implements des {
    public static final dok c;
    private static volatile dex e;
    public int a;
    public doj b;
    private byte d = 2;

    static {
        dok dokVar = new dok();
        c = dokVar;
        ddk.D(dok.class, dokVar);
    }

    private dok() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.d);
            case 1:
            default:
                this.d = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"a", "b"});
            case 3:
                return new dok();
            case 4:
                return new ddf(c);
            case 5:
                return c;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dok.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(c);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
