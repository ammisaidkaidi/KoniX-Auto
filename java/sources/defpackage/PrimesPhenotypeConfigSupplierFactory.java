package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesPhenotypeConfigSupplierFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;

    public PrimesPhenotypeConfigSupplierFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PrimesPhenotypeConfigSupplier a() {
        return new PrimesPhenotypeConfigSupplier(((AppContextProviderFactory) this.a).a(), (GuavaOptional) ((SingleCheckProvider) this.b).a, (GuavaOptional) ((SingleCheckProvider) this.c).a, (GuavaOptional) ((SingleCheckProvider) this.d).a, ((DelegatingProviderWrapper) this.e).b());
    }
}
