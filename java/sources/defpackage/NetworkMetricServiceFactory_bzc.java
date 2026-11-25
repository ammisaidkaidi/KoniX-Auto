package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkMetricServiceFactory_bzc implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final DaggerProviderInterface h;
    private final DaggerProviderInterface i;
    private final DaggerProviderInterface j;
    private final DaggerProviderInterface k;

    public NetworkMetricServiceFactory_bzc(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, DaggerProviderInterface dnyVar10, DaggerProviderInterface dnyVar11) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
        this.i = dnyVar9;
        this.j = dnyVar10;
        this.k = dnyVar11;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* bridge */ /* synthetic */ Object a() {
        MetricDispatcherAssistedFactory a = ((MetricDispatcherFactory) this.a).a();
        return new NetworkMetricServiceImpl(a, ((AppContextProviderFactory) this.c).a(), (CancellableScheduledFuture) this.d.a(), (ListeningScheduledExecutorService) this.e.a(), DoubleCheckProvider.b(this.f), ((MemoryUsageCaptureFactory) this.g).a(), (PrimesShutdownHookRegistry) this.h.a(), this.i, (Executor) this.j.a(), (GuavaOptional) ((SingleCheckProvider) this.k).a);
    }
}
