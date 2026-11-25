package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FrameMetricServiceFactory implements DaggerProvider {
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
    private final DaggerProviderInterface l;

    public FrameMetricServiceFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, DaggerProviderInterface dnyVar10, DaggerProviderInterface dnyVar11, DaggerProviderInterface dnyVar12) {
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
        this.l = dnyVar12;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* bridge */ /* synthetic */ Object a() {
        return new FrameMetricServiceImpl(((MetricDispatcherFactory) this.a).a(), ((AppContextProviderFactory) this.b).a(), (PrimesLifecycleRegistrar) this.c.a(), DoubleCheckProvider.b(this.d), (ActivityLevelJankMonitor) this.e.a(), this.f, this.g, (Executor) this.h.a(), DoubleCheckProvider.b(this.i), (PerfettoTraceTrigger) this.j.a(), this.k, ((BooleanProviderFactory) this.l).a().booleanValue());
    }
}
