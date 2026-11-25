package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbe extends ddk implements des {
    public static final dbe i;
    private static volatile dex j;
    public int a;
    public dbp b;
    public ddr c = dfa.b;
    public dcl d = dcl.b;
    public String e = "";
    public ddr f;
    public dcl g;
    public dbg h;

    static {
        dbe dbeVar = new dbe();
        i = dbeVar;
        ddk.D(dbe.class, dbeVar);
    }

    private dbe() {
        ddl ddlVar = ddl.b;
        this.f = dfa.b;
        this.g = dcl.b;
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
                return C(i, "\u0001\u0007\u0000\u0001\u0001\n\u0007\u0000\u0002\u0000\u0001ဉ\u0000\u0002\u001b\u0003ည\u0001\u0004ဈ\u0002\u0006\u001b\u0007ည\u0003\nဉ\u0005", new Object[]{"a", "b", "c", dbn.class, "d", "e", "f", dbh.class, "g", "h"});
            case 3:
                return new dbe();
            case 4:
                return new ddf(i);
            case 5:
                return i;
            case 6:
                dex dexVar = j;
                if (dexVar == null) {
                    synchronized (dbe.class) {
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
