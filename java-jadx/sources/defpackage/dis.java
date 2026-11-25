package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dis implements dir {
    public static final cgj a;

    static {
        cgo d = new cgo("com.google.android.apps.auto.aareceiver").d();
        try {
            a = d.c("16", (dgp) ddk.p(dgp.b, new byte[0]), cgk.d);
        } catch (ddu e) {
            throw new AssertionError("Could not parse proto flag \"16\"");
        }
    }

    @Override // defpackage.dir
    public final dgp a() {
        return (dgp) a.a();
    }
}
