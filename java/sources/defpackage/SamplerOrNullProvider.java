package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class SamplerOrNullProvider implements DaggerProviderInterface {
    public final /* synthetic */ DaggerProviderInterface a;
    private final /* synthetic */ int b;

    public /* synthetic */ caw(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final Object a() {
        switch (this.b) {
            case 0:
                return (TraceSampler) this.a.a();
            default:
                MemoryMetricServiceFactory btpVar = (MemoryMetricServiceFactory) this.a;
                if (!btpVar.a().d() || ((MetricExtensionProviderBase) btpVar.a().a()).b() == null) {
                    return null;
                }
                DaggerProviderInterface b = ((MetricExtensionProviderBase) btpVar.a().a()).b();
                b.getClass();
                return (ProtoEmptyMessageBeta) b.a();
        }
    }
}
