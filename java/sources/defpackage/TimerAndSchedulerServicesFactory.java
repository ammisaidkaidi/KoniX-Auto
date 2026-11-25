package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerAndSchedulerServicesFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final /* synthetic */ int c;

    public TimerAndSchedulerServicesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i) {
        this.c = i;
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    public TimerAndSchedulerServicesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, byte[] bArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public TimerAndSchedulerServicesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, char[] cArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.c) {
            case 0:
                ((DelegatingProviderWrapper) this.a).b();
                return ImmutableSet.o((NetworkMetricCollectorImpl) this.b.a());
            case 1:
                return new CancellableScheduledFuture((PrimesLifecycleRegistrar) this.b.a(), (ListeningScheduledExecutorService) this.a.a());
            case 2:
                ((DelegatingProviderWrapper) this.a).b();
                return ImmutableSet.o((PrimesMetricServiceLifecycle) this.b.a());
            case 3:
                return new TimerMetricServiceWithSampler((TimerMetricServiceImpl) this.b.a(), ((TraceSamplerOptionalFactory) this.a).a());
            default:
                Object o = ClearcutSnapshotTransmitterImpl.c((GuavaOptional) ((SingleCheckProvider) this.a).a) ? ImmutableSet.o(((PrimesPhenotypeConfigSupplierFactory) this.b).a()) : csf.a;
                CommonObjectsAndPreconditionsUtil.m(IcuConfigApostropheModeAction);
                return o;
        }
    }
}
