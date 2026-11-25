package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeApiServiceFlagsFacade implements StopwatchTicker {
    public static final PhenotypeApiServiceFlagsFacade a = new PhenotypeApiServiceFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new PhenotypeApiServiceFlagsImpl()));

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PhenotypeApiServiceFlags a() {
        return (PhenotypeApiServiceFlags) this.b.a();
    }
}
