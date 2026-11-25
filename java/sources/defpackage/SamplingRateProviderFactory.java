package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SamplingRateProviderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public SamplingRateProviderFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SamplingRateProvider a() {
        return new SamplingRateProvider(this.a);
    }
}
