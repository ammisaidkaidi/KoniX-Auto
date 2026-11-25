package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StartupMetricServiceFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final DaggerProviderInterface h;

    public StartupMetricServiceFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PrimesApiImpl a() {
        ((AppContextProviderFactory) this.a).a();
        return new PrimesApiImpl((PrimesShutdownHookRegistry) this.b.a(), this.c, this.d, this.e, this.f, (GuavaOptional) ((SingleCheckProvider) this.g).a, (CallerAppClassifier) this.h.a(), null);
    }
}
