package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlagsDjqFacade implements StopwatchTicker {
    private static final AaReceiverFlagsDjqFacade a = new AaReceiverFlagsDjqFacade();
    private final StopwatchTicker b = ex.i(ex.j(new AaReceiverFlagsDjqImpl()));

    public static boolean c() {
        return a.a().a();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AaReceiverFlagsDjq a() {
        return (AaReceiverFlagsDjq) this.b.a();
    }
}
