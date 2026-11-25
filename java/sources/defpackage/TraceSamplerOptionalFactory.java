package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TraceSamplerOptionalFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;

    public TraceSamplerOptionalFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GuavaOptional a() {
        ((DelegatingProviderWrapper) this.a).b();
        DaggerProviderInterface dnyVar = this.c;
        dnyVar.getClass();
        return GuavaOptional.e(new SamplerOrNullProvider(dnyVar, 0));
    }
}
