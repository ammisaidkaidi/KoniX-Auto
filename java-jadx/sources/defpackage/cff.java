package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cff extends ddk implements des {
    public static final cff b;
    private static volatile dex c;
    public dem a = dem.a;

    static {
        cff cffVar = new cff();
        b = cffVar;
        ddk.D(cff.class, cffVar);
    }

    private cff() {
    }

    public final dem b() {
        dem demVar = this.a;
        if (!demVar.b) {
            this.a = demVar.a();
        }
        return this.a;
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
                return C(b, "\u0001\u0001\u0000\u0000\u0002\u0002\u0001\u0001\u0000\u0000\u00022", new Object[]{"a", cfe.a});
            case 3:
                return new cff();
            case 4:
                return new ddf(b);
            case 5:
                return b;
            case 6:
                dex dexVar = c;
                if (dexVar == null) {
                    synchronized (cff.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ddg(b);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
