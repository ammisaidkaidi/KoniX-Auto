package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryMetricServiceFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public BatteryMetricServiceFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final BatteryConfigurations a() {
        BatteryConfigurations bvrVar = (BatteryConfigurations) ((DaggerProviderInterface) ((GuavaOptional) ((SingleCheckProvider) this.a).a).b(btn.d)).a();
        CommonObjectsAndPreconditionsUtil.m(bvrVar);
        return bvrVar;
    }
}
