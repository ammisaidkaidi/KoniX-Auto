package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbk extends ddk implements des {
    public static final dbk f;
    private static volatile dex h;
    public long d;
    private int g;
    public ddr a = dfa.b;
    public dcl b = dcl.b;
    public String c = "";
    public ddp e = ddl.b;

    static {
        dbk dbkVar = new dbk();
        f = dbkVar;
        ddk.D(dbk.class, dbkVar);
    }

    private dbk() {
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
                return C(f, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0002\u0000\u0001\u001b\u0002ည\u0000\u0003ဈ\u0001\u0004ဂ\u0002\u0006\u0016", new Object[]{"g", "a", dbe.class, "b", "c", "d", "e"});
            case 3:
                return new dbk();
            case 4:
                return new ddf(f);
            case 5:
                return f;
            case 6:
                dex dexVar = h;
                if (dexVar == null) {
                    synchronized (dbk.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ddg(f);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
