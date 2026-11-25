package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnp {
    private static bnp b = null;
    private static final bnq c = new bnq(0, false, false, 0, 0);
    public bnq a;

    private bnp() {
    }

    public static synchronized bnp a() {
        bnp bnpVar;
        synchronized (bnp.class) {
            if (b == null) {
                b = new bnp();
            }
            bnpVar = b;
        }
        return bnpVar;
    }

    public final synchronized void b(bnq bnqVar) {
        if (bnqVar == null) {
            this.a = c;
            return;
        }
        bnq bnqVar2 = this.a;
        if (bnqVar2 == null || bnqVar2.a < bnqVar.a) {
            this.a = bnqVar;
        }
    }
}
