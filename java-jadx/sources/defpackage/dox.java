package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dox extends ddi implements des {
    public static final dox h;
    private static volatile dex j;
    public int a;
    public dow b;
    public dph c;
    public int e;
    public dov f;
    private byte i = 2;
    public String g = "";

    static {
        dox doxVar = new dox();
        h = doxVar;
        ddk.D(dox.class, doxVar);
    }

    private dox() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.i);
            case 1:
            default:
                this.i = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(h, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဌ\u0002\u0004ဉ\u0003\u0005ဈ\u0004", new Object[]{"a", "b", "c", "e", dgh.m, "f", "g"});
            case 3:
                return new dox();
            case 4:
                return new ddh(h);
            case 5:
                return h;
            case 6:
                dex dexVar = j;
                if (dexVar == null) {
                    synchronized (dox.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ddg(h);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
