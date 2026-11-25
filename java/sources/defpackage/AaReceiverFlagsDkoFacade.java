package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlagsDkoFacade implements StopwatchTicker {
    private static final AaReceiverFlagsDkoFacade a = new AaReceiverFlagsDkoFacade();
    private final StopwatchTicker b = ex.i(ex.j(new AaReceiverFlagsDkoImpl()));

    public static boolean c() {
        return a.a().a();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AaReceiverFlagsDko a() {
        return (AaReceiverFlagsDko) this.b.a();
    }
}
