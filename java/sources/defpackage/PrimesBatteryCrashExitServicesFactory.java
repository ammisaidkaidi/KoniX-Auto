package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesBatteryCrashExitServicesFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final DaggerProviderInterface h;
    private final DaggerProviderInterface i;
    private final /* synthetic */ int j;

    public PrimesBatteryCrashExitServicesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, int i) {
        this.j = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
        this.i = dnyVar9;
    }

    public PrimesBatteryCrashExitServicesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, int i, byte[] bArr) {
        this.j = i;
        this.h = dnyVar;
        this.b = dnyVar2;
        this.f = dnyVar3;
        this.c = dnyVar4;
        this.i = dnyVar5;
        this.g = dnyVar6;
        this.d = dnyVar7;
        this.e = dnyVar8;
        this.a = dnyVar9;
    }

    public PrimesBatteryCrashExitServicesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, int i, char[] cArr) {
        this.j = i;
        this.e = dnyVar;
        this.h = dnyVar2;
        this.d = dnyVar3;
        this.a = dnyVar4;
        this.i = dnyVar5;
        this.g = dnyVar6;
        this.c = dnyVar7;
        this.f = dnyVar8;
        this.b = dnyVar9;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.j) {
            case 0:
                return new CrashMetricServiceImpl(((MetricDispatcherFactory) this.a).a(), ((AppContextProviderFactory) this.b).a(), (Executor) this.c.a(), DoubleCheckProvider.b(this.d), (GuavaOptional) ((SingleCheckProvider) this.e).a, (PrimesLifecycleRegistrar) this.f.a(), ((SamplingRateProviderFactory) this.g).a(), (GuavaOptional) ((SingleCheckProvider) this.h).a, this.i);
            case 1:
                return new BatteryMetricServiceImpl(((MetricDispatcherFactory) this.h).a(), ((AppContextProviderFactory) this.b).a(), (PrimesLifecycleRegistrar) this.f.a(), (ListeningScheduledExecutorService) this.c.a(), DoubleCheckProvider.b(this.i), ((PersistentStorageHolderFactory) this.g).a(), ((PrimesRuntimeContextFactory) this.d).a(), this.e, (Executor) this.a.a());
            default:
                return new ApplicationExitMetricServiceImpl(((MetricDispatcherFactory) this.e).a(), ((AppContextProviderFactory) this.h).a(), (PrimesLifecycleRegistrar) this.d.a(), (Executor) this.a.a(), ((ApplicationExitInfoProviderFactory) this.i).a(), this.g, DoubleCheckProvider.b(this.c), this.f, this.b);
        }
    }
}
