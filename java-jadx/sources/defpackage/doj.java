package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class doj extends ddk implements des {
    public static final doj k;
    private static volatile dex m;
    public int a;
    public int b;
    public long c;
    public dot f;
    public int g;
    public long h;
    public dos i;
    public long j;
    private byte l = 2;
    public String d = "";
    public String e = "";

    static {
        doj dojVar = new doj();
        k = dojVar;
        ddk.D(doj.class, dojVar);
    }

    private doj() {
        dfa dfaVar = dfa.b;
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.l);
            case 1:
            default:
                this.l = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(k, "\u0001\t\u0000\u0001\u0001\u000b\t\u0000\u0000\u0001\u0001ဌ\u0000\u0002ဌ\u0005\u0003ဂ\u0006\u0006ဉ\u0007\u0007ဂ\b\bစ\u0001\tဈ\u0002\nဈ\u0003\u000bᐉ\u0004", new Object[]{"a", "b", doi.c(), "g", doi.c(), "h", "i", "j", "c", "d", "e", "f"});
            case 3:
                return new doj();
            case 4:
                return new ddf(k);
            case 5:
                return k;
            case 6:
                dex dexVar = m;
                if (dexVar == null) {
                    synchronized (doj.class) {
                        dexVar = m;
                        if (dexVar == null) {
                            dexVar = new ddg(k);
                            m = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
