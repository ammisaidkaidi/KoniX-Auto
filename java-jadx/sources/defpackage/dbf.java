package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbf extends ddk implements des {
    public static final dbf g;
    private static volatile dex i;
    public int a;
    public long b;
    public dgs c;
    public boolean f;
    private byte h = 2;
    public String d = "";
    public dcl e = dcl.b;

    static {
        dbf dbfVar = new dbf();
        g = dbfVar;
        ddk.D(dbf.class, dbfVar);
    }

    private dbf() {
    }

    @Override // defpackage.ddk
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return Byte.valueOf(this.h);
            case 1:
            default:
                this.h = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(g, "\u0001\u0005\u0000\u0001\u0002\u0007\u0005\u0000\u0000\u0001\u0002ဂ\u0001\u0004ᐉ\u0003\u0005ဈ\u0004\u0006ည\u0005\u0007ဇ\u0006", new Object[]{"a", "b", "c", "d", "e", "f"});
            case 3:
                return new dbf();
            case 4:
                return new ddf(g);
            case 5:
                return g;
            case 6:
                dex dexVar = i;
                if (dexVar == null) {
                    synchronized (dbf.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ddg(g);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
