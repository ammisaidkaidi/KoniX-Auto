package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpz extends ddk implements des {
    private static volatile dex B;
    public static final dpz y;
    public int a;
    public dox b;
    public long c;
    public dqa e;
    public dpk f;
    public doz g;
    public dpm h;
    public dpv i;
    public dps j;
    public dok k;
    public dpq l;
    public dot m;
    public dpb n;
    public dpj p;
    public dpo u;
    public dpy v;
    public dpn w;
    public dog x;
    private dpl z;
    private byte A = 2;
    public String d = "";
    public String o = "";

    static {
        dpz dpzVar = new dpz();
        y = dpzVar;
        ddk.D(dpz.class, dpzVar);
    }

    private dpz() {
        dfa dfaVar = dfa.b;
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.A);
            case 1:
            default:
                this.A = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(y, "\u0001\u0014\u0000\u0001\u0001 \u0014\u0000\u0000\b\u0001ᐉ\u0000\u0002စ\u0001\u0003ဈ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ᐉ\u0005\u0007ᐉ\u0006\bᐉ\u0007\tဉ\b\nᐉ\t\fဉ\u000b\u000eᐉ\r\u0010ᐉ\u000e\u0011ဈ\u000f\u0015ဉ\u0013\u0017ဉ\u0015\u001dᐉ\u0018\u001eဉ\u0019\u001fဉ\u001a ဉ\u001b", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "u", "z", "v", "w", "x"});
            case 3:
                return new dpz();
            case 4:
                return new ddf(y);
            case 5:
                return y;
            case 6:
                dex dexVar = B;
                if (dexVar == null) {
                    synchronized (dpz.class) {
                        dexVar = B;
                        if (dexVar == null) {
                            dexVar = new ddg(y);
                            B = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
