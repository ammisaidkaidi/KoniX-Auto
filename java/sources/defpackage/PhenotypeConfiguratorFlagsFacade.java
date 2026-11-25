package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeConfiguratorFlagsFacade implements StopwatchTicker {
    public static final PhenotypeConfiguratorFlagsFacade a = new PhenotypeConfiguratorFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new PhenotypeConfiguratorFlagsImpl()));

    public static boolean c() {
        return a.a().f();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PhenotypeConfiguratorFlags a() {
        return (PhenotypeConfiguratorFlags) this.b.a();
    }
}
