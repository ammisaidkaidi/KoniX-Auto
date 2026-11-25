package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dgt extends ddi implements des {
    public static final dgt j;
    private static volatile dex l;
    public int a;
    public long b;
    public long c;
    public int e;
    public dcl f;
    public long g;
    public boolean h;
    public String i;
    private byte k = 2;

    static {
        dgt dgtVar = new dgt();
        j = dgtVar;
        ddk.D(dgt.class, dgtVar);
    }

    private dgt() {
        dfa dfaVar = dfa.b;
        dcl dclVar = dcl.b;
        this.f = dcl.b;
        this.g = 180000L;
        ddl ddlVar = ddl.b;
        this.i = "";
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return Byte.valueOf(this.k);
            case 1:
            default:
                this.k = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(j, "\u0001\u0007\u0000\u0001\u0001\u001c\u0007\u0000\u0000\u0000\u0001ဂ\u0000\u0006ည\n\u000bင\u0004\u000fတ\u0010\u0011ဂ\u0001\u0019ဇ\u0017\u001cဈ\u0018", new Object[]{"a", "b", "f", "e", "g", "c", "h", "i"});
            case 3:
                return new dgt();
            case 4:
                return new ddh(j);
            case 5:
                return j;
            case 6:
                dex dexVar = l;
                if (dexVar == null) {
                    synchronized (dgt.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ddg(j);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
