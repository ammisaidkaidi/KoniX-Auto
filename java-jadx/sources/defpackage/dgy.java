package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgy extends ddk implements des {
    public static final dgy i;
    private static volatile dex j;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;

    static {
        dgy dgyVar = new dgy();
        i = dgyVar;
        ddk.D(dgy.class, dgyVar);
    }

    private dgy() {
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
                return C(i, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001င\u0005\u0002င\u0006\u0003င\u0007\u0004င\u0000\u0005င\u0001\u0006င\u0002\u0007င\u0003", new Object[]{"a", "f", "g", "h", "b", "c", "d", "e"});
            case 3:
                return new dgy();
            case 4:
                return new ddf(i);
            case 5:
                return i;
            case 6:
                dex dexVar = j;
                if (dexVar == null) {
                    synchronized (dgy.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ddg(i);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
