package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationFlagsFacade implements StopwatchTicker {
    public static final PhenotypeRegistrationFlagsFacade a = new PhenotypeRegistrationFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new PhenotypeRegistrationFlagsImpl()));

    public static boolean c() {
        return a.a().a();
    }

    public static boolean d() {
        return a.a().b();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PhenotypeRegistrationFlags a() {
        return (PhenotypeRegistrationFlags) this.b.a();
    }
}
