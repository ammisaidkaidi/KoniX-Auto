package defpackage;

import android.os.SystemClock;
import j$.util.Optional;
import java.util.Random;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesExecutorConfigFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final /* synthetic */ int b;

    public PrimesExecutorConfigFactory(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                return new UsbHostPermissionChecker(((AppContextProviderFactory) this.a).a());
            case 1:
                Executor mainExecutor = ((AppContextProviderFactory) this.a).a().getMainExecutor();
                CommonObjectsAndPreconditionsUtil.m(mainExecutor);
                return mainExecutor;
            case 2:
                return new AppContextModule(((AppContextProviderFactory) this.a).a(), (byte[]) null, (char[]) null);
            case 3:
                GalServiceEndpoint clkVar = (GalServiceEndpoint) Optional.ofNullable(((HotwordManager) this.a.a()).b).orElse(baz.a);
                CommonObjectsAndPreconditionsUtil.m(clkVar);
                return clkVar;
            case 4:
                ApplicationExitConfigurations bxnVar = (ApplicationExitConfigurations) ((DaggerProviderInterface) ((GuavaOptional) ((SingleCheckProvider) this.a).a).b(btn.c)).a();
                CommonObjectsAndPreconditionsUtil.m(bxnVar);
                return bxnVar;
            case 5:
                CpuProfilingConfigurations bwxVar = (CpuProfilingConfigurations) ((DaggerProviderInterface) ((GuavaOptional) ((SingleCheckProvider) this.a).a).b(btn.e)).a();
                CommonObjectsAndPreconditionsUtil.m(bwxVar);
                return bwxVar;
            case 6:
                CrashConfigurations bxfVar = (CrashConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.f)).a();
                CommonObjectsAndPreconditionsUtil.m(bxfVar);
                return bxfVar;
            case 7:
                JankConfigurations bykVar = (JankConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.g)).a();
                CommonObjectsAndPreconditionsUtil.m(bykVar);
                return bykVar;
            case 8:
                StorageConfigurations cakVar = (StorageConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.i)).a();
                CommonObjectsAndPreconditionsUtil.m(cakVar);
                return cakVar;
            case 9:
                GuavaOptional cocVar = (GuavaOptional) ((SingleCheckProvider) this.a).a;
                JankMetricConfigBuilder buiVar = new JankMetricConfigBuilder();
                buiVar.a = 11;
                buiVar.b = 2;
                buiVar.c = true;
                Integer num = buiVar.a;
                if (num != null && buiVar.b != null && buiVar.c != null) {
                    JankMetricConfig bujVar = new JankMetricConfig(num.intValue(), buiVar.b.intValue(), buiVar.c.booleanValue());
                    int i = bujVar.b;
                    ex.t(NavInstructionTypeEnum > 0 && NavInstructionTypeEnum <= 2, "Thread pool size must be less than or equal to %s", 2);
                    return (JankMetricConfig) cocVar.b(bujVar);
                }
                StringBuilder sb = new StringBuilder();
                if (buiVar.a == null) {
                    StaggeredGridLayoutParams.append(" primesMetricExecutorPriority");
                }
                if (buiVar.b == null) {
                    StaggeredGridLayoutParams.append(" primesMetricExecutorPoolSize");
                }
                if (buiVar.c == null) {
                    StaggeredGridLayoutParams.append(" enableDeferredTasks");
                }
                throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
            case 10:
                TikTokTraceConfigurations cbbVar = (TikTokTraceConfigurations) ((DaggerProviderInterface) ((GuavaOptional) ((SingleCheckProvider) this.a).a).b(btn.j)).a();
                CommonObjectsAndPreconditionsUtil.m(cbbVar);
                return cbbVar;
            case 11:
                TimerConfigurations capVar = (TimerConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.b)).a();
                CommonObjectsAndPreconditionsUtil.m(capVar);
                return capVar;
            case 12:
                TraceConfigurations cbeVar = (TraceConfigurations) ((DaggerProviderInterface) ((DelegatingProviderWrapper) this.a).b().b(btn.a)).a();
                CommonObjectsAndPreconditionsUtil.m(cbeVar);
                return cbeVar;
            case 13:
                return new CallerAppClassifier(((AppContextProviderFactory) this.a).a());
            case 14:
                return new Random(SystemClock.elapsedRealtime());
            case 15:
                Primes a = ((TimerMetricServiceFactory_btw) this.a).a();
                Primes.b(new PrimesApiImplHolder(SingleStringProtoMessage));
                return a;
            case 16:
                return (PrimesDebugEventsHelper) ((DelegatingProviderWrapper) this.a).b().b(new PrimesDebugEventsHelper());
            case 17:
                return new PrimesThemeValueReader();
            case 18:
                return Boolean.valueOf(PrimesConfigFlags45352228Provider.a.a().b(((AppContextProviderFactory) this.a).a()));
            case 19:
                return PrimesConfigFlags45352228Provider.a.a().a(((AppContextProviderFactory) this.a).a());
            default:
                return PrimesMetric16ConfigFlagsProvider.a.a().a(((AppContextProviderFactory) this.a).a());
        }
    }
}
