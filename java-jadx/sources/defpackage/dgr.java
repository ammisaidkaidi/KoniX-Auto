package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgr extends ddi implements des {
    public static final dgr x;
    private static volatile dex z;
    public int a;
    public long b;
    public int c;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public String p;
    public String u;
    public String v;
    public int w;
    private byte y = 2;

    static {
        dgr dgrVar = new dgr();
        x = dgrVar;
        ddk.D(dgr.class, dgrVar);
    }

    private dgr() {
        dfa dfaVar = dfa.b;
        this.e = "";
        this.f = "";
        this.g = "";
        this.h = "";
        this.i = "";
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = "";
        this.o = "";
        this.p = "";
        this.u = "";
        this.v = "";
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.y);
            case 1:
            default:
                this.y = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(x, "\u0001\u0011\u0000\u0001\u0001!\u0011\u0000\u0000\u0000\u0001ဂ\u0000\u0003င\u0003\u0004ဈ\u0004\u0005ဈ\u0005\u0006ဈ\b\u0007ဈ\t\bဈ\u0006\tဈ\u0007\nဈ\n\u000bဈ\u000b\fဈ\f\rဈ\r\u000eဈ\u000e\u000fဈ\u000f\u0011ဈ\u0011\u001aဈ\u0019!င\u001c", new Object[]{"a", "b", "c", "e", "f", "i", "j", "g", "h", "k", "l", "m", "n", "o", "p", "u", "v", "w"});
            case 3:
                return new dgr();
            case 4:
                return new ddh(x);
            case 5:
                return x;
            case 6:
                dex dexVar = z;
                if (dexVar == null) {
                    synchronized (dgr.class) {
                        dexVar = z;
                        if (dexVar == null) {
                            dexVar = new ddg(x);
                            z = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
