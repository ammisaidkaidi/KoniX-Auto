package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerMetricServiceFactory_can implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;

    public TimerMetricServiceFactory_can(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AbstractTimerMetricService a() {
        ((DelegatingProviderWrapper) this.a).b();
        ((TraceSamplerOptionalFactory) this.b).a();
        AbstractTimerMetricService carVar = (AbstractTimerMetricService) this.c.a();
        CommonObjectsAndPreconditionsUtil.m(carVar);
        return carVar;
    }
}
