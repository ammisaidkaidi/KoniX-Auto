package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MemoryUsageCaptureFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;

    public MemoryUsageCaptureFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final MemoryUsageCapture a() {
        return new MemoryUsageCapture(this.a, ((AppContextProviderFactory) this.b).a());
    }
}
