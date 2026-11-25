package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class JankMetricServiceFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public JankMetricServiceFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final MemoryConfigurations a() {
        MemoryConfigurations byqVar = (MemoryConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.k)).a();
        CommonObjectsAndPreconditionsUtil.m(byqVar);
        return byqVar;
    }
}
