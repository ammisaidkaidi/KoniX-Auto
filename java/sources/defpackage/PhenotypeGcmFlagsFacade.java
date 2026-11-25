package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeGcmFlagsFacade implements StopwatchTicker {
    public static final PhenotypeGcmFlagsFacade a = new PhenotypeGcmFlagsFacade();
    private final StopwatchTicker b = ex.i(ex.j(new PhenotypeGcmFlagsImpl()));

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PhenotypeGcmFlags a() {
        return (PhenotypeGcmFlags) this.b.a();
    }
}
