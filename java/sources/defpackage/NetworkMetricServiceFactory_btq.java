package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkMetricServiceFactory_btq implements DaggerProvider {
    private final DaggerProviderInterface a;

    public NetworkMetricServiceFactory_btq(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final NetworkConfigurations a() {
        NetworkConfigurations bzhVar = (NetworkConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.h)).a();
        CommonObjectsAndPreconditionsUtil.m(bzhVar);
        return bzhVar;
    }
}
