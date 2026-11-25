package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpo extends ddk implements des {
    public static final dpo d;
    private static volatile dex e;
    public int a;
    public long b;
    public long c;

    static {
        dpo dpoVar = new dpo();
        d = dpoVar;
        ddk.D(dpo.class, dpoVar);
    }

    private dpo() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"a", "b", "c"});
            case 3:
                return new dpo();
            case 4:
                return new ddf(d);
            case 5:
                return d;
            case 6:
                dex dexVar = e;
                if (dexVar == null) {
                    synchronized (dpo.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ddg(d);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
