package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MemoryMetricServiceFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public MemoryMetricServiceFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GuavaOptional a() {
        MetricExtensionProviderBase bwhVar;
        GuavaOptional cocVar = (GuavaOptional) ((SingleCheckProvider) this.a).a;
        if (cocVar.d() && (bwhVar = (MetricExtensionProviderBase) ((DaggerProviderInterface) cocVar.a()).a()) != null) {
            return new PresentOptional(bwhVar);
        }
        return cns.a;
    }
}
