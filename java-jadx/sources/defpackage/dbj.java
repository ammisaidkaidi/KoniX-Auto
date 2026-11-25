package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbj extends ddk implements des {
    public static final dbj h;
    private static volatile dex j;
    public int a;
    public dbf b;
    public int e;
    public int g;
    private byte i = 2;
    public ddr c = dfa.b;
    public dcl d = dcl.b;
    public String f = "";

    static {
        dbj dbjVar = new dbj();
        h = dbjVar;
        ddk.D(dbj.class, dbjVar);
    }

    private dbj() {
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
                return C(h, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0001\u0001ᐉ\u0000\u0002\u001b\u0003ည\u0001\u0004ဌ\u0002\u0005င\u0004\u0007ဈ\u0003", new Object[]{"a", "b", "c", dbd.class, "d", "e", ckg.n, "g", "f"});
            case 3:
                return new dbj();
            case 4:
                return new ddf(h);
            case 5:
                return h;
            case 6:
                dex dexVar = j;
                if (dexVar == null) {
                    synchronized (dbj.class) {
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
