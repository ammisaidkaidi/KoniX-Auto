package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CollectionBasisVerifierFlagsFacade implements StopwatchTicker {
    public static final CollectionBasisVerifierFlagsFacade a = new CollectionBasisVerifierFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new CollectionBasisVerifierFlagsImpl()));

    public static boolean c() {
        return a.a().e();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final CollectionBasisVerifierFlags a() {
        return (CollectionBasisVerifierFlags) this.b.a();
    }
}
