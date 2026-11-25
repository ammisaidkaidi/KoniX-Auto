package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cem extends ddk implements des {
    public static final cem i;
    private static volatile dex j;
    public int a;
    public String b = "";
    public dcl c = dcl.b;
    public String d = "";
    public ddr e = dfa.b;
    public ddr f = dfa.b;
    public boolean g;
    public long h;

    static {
        cem cemVar = new cem();
        i = cemVar;
        ddk.D(cem.class, cemVar);
    }

    private cem() {
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
                return C(i, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001ဈ\u0002\u0002ဈ\u0000\u0003ည\u0001\u0004\u001b\u0005\u001a\bဇ\u0003\tဂ\u0004", new Object[]{"a", "d", "b", "c", "e", cen.class, "f", "g", "h"});
            case 3:
                return new cem();
            case 4:
                return new ddf(i);
            case 5:
                return i;
            case 6:
                dex dexVar = j;
                if (dexVar == null) {
                    synchronized (cem.class) {
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
