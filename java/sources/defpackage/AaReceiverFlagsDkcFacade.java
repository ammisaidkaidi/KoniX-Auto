package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlagsDkcFacade implements StopwatchTicker {
    private static final AaReceiverFlagsDkcFacade a = new AaReceiverFlagsDkcFacade();
    private final StopwatchTicker b = ex.i(ex.j(new AaReceiverFlagsDkcImpl()));

    public static boolean c() {
        return a.a().a();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AaReceiverFlagsDkc a() {
        return (AaReceiverFlagsDkc) this.b.a();
    }
}
