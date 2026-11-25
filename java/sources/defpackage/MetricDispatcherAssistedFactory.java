package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MetricDispatcherAssistedFactory {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;

    public MetricDispatcherAssistedFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6) {
        dnyVar.getClass();
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
    }

    public final MetricDispatcherImpl a(Executor executor, DaggerInternalFactoryMarker dgzVar, DaggerProviderInterface dnyVar) {
        MetricDispatcher bwlVar = (MetricDispatcher) this.a.a();
        bwlVar.getClass();
        DaggerProviderInterface dnyVar2 = this.b;
        PrimesShutdownHookRegistry bulVar = (PrimesShutdownHookRegistry) this.c.a();
        bulVar.getClass();
        Object a = this.d.a();
        DaggerProviderInterface dnyVar3 = this.e;
        ThreadStateTracker butVar = (ThreadStateTracker) this.f.a();
        butVar.getClass();
        executor.getClass();
        dgzVar.getClass();
        return new MetricDispatcherImpl(bwlVar, dnyVar2, bulVar, (MetricModuleProviders) a, dnyVar3, butVar, executor, dgzVar, dnyVar);
    }
}
