package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cka extends ddk implements des {
    public static final cka j;
    private static volatile dex k;
    public int a;
    public String b = "";
    public String c = "";
    public String d = "";
    public String e = "";
    public String f = "";
    public String g = "";
    public String h = "";
    public String i = "";

    static {
        cka ckaVar = new cka();
        j = ckaVar;
        ddk.D(cka.class, ckaVar);
    }

    private cka() {
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
                return C(j, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i"});
            case 3:
                return new cka();
            case 4:
                return new ddf(j);
            case 5:
                return j;
            case 6:
                dex dexVar = k;
                if (dexVar == null) {
                    synchronized (cka.class) {
                        dexVar = k;
                        if (dexVar == null) {
                            dexVar = new ddg(j);
                            k = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
