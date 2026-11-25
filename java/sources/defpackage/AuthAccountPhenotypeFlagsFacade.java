package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AuthAccountPhenotypeFlagsFacade implements StopwatchTicker {
    public static final AuthAccountPhenotypeFlagsFacade a = new AuthAccountPhenotypeFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new AuthAccountPhenotypeFlagsImpl()));

    public static boolean c() {
        return a.a().b();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AuthAccountPhenotypeFlags a() {
        return (AuthAccountPhenotypeFlags) this.b.a();
    }
}
