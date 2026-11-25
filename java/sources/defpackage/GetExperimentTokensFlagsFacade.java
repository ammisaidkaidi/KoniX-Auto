package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GetExperimentTokensFlagsFacade implements StopwatchTicker {
    public static final GetExperimentTokensFlagsFacade a = new GetExperimentTokensFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new GetExperimentTokensFlagsImpl()));

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GetExperimentTokensFlags a() {
        return (GetExperimentTokensFlags) this.b.a();
    }
}
