package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesCoreMetricModuleProvider implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final /* synthetic */ int b;

    public PrimesCoreMetricModuleProvider(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        Looper looper;
        switch (this.b) {
            case 0:
                return Boolean.valueOf(PrimesConfigFlags45351156Provider.a.a().c(((AppContextProviderFactory) this.a).a()));
            case 1:
                return PrimesFlags45357002Provider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 2:
                return Boolean.valueOf(PrimesFlags45350519Provider.a.a().a(((AppContextProviderFactory) this.a).a()));
            case 3:
                return Boolean.valueOf(PrimesFlags45350020Provider.a.a().c(((AppContextProviderFactory) this.a).a()));
            case 4:
                return Long.valueOf(PrimesFlags45350020Provider.a.a().a(((AppContextProviderFactory) this.a).a()));
            case 5:
                return PrimesConfigFlags45351156Provider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 6:
                return PrimesConfigFlags45351156Provider.a.a().b(((AppContextProviderFactory) this.a).a());
            case 7:
                return PrimesMetric8ConfigFlagsProvider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 8:
                return PrimesMetric12ConfigFlagsProvider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 9:
                return Boolean.valueOf(PrimesConfigFlags45351156Provider.a.a().d(((AppContextProviderFactory) this.a).a()));
            case 10:
                return PrimesFlags45350020Provider.a.a().b(((AppContextProviderFactory) this.a).a());
            case 11:
                return PrimesMetric17ConfigFlagsProvider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 12:
                return PrimesMetric9ConfigFlagsProvider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 13:
                return PrimesMetric10ConfigFlagsProvider.a.a().a(((AppContextProviderFactory) this.a).a());
            case 14:
                return new PrimesActivityLifecycleCallbacks((CallerAppClassifier) this.a.a(), null);
            case 15:
                return new PrimesLifecycleCallbacksHolder((PrimesActivityLifecycleCallbacks) this.a.a());
            case 16:
                return new MetricDispatcher(DoubleCheckProvider.b(this.a));
            case 17:
                Context a = ((AppContextProviderFactory) this.a).a();
                PackageManager packageManager = a.getPackageManager();
                String packageName = a.getPackageName();
                try {
                    return packageManager.getPackageInfo(packageName, 0).versionName;
                } catch (PackageManager.NameNotFoundException e) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) PrimesCoreMetricDaggerModule.a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/core/PrimesCoreMetricDaggerModule", "provideVersionName", 84, "PrimesCoreMetricDaggerModule.java")).p("Failed to get PackageInfo for: %s", packageName);
                    return null;
                }
            case 18:
                return new PerfettoTraceTrigger((StackClassGetterBase) this.a.a());
            case 19:
                Object o = Build.VERSION.SDK_INT >= 30 ? ImmutableSet.o((PrimesMetricServiceLifecycle) this.a.a()) : csf.a;
                CommonObjectsAndPreconditionsUtil.m(IcuConfigApostropheModeAction);
                return o;
            default:
                GuavaOptional cocVar = (GuavaOptional) ((SingleCheckProvider) this.a).a;
                if (cocVar.d()) {
                    looper = (Looper) cocVar.a();
                } else {
                    HandlerThread handlerThread = new HandlerThread("Primes-Jank", 10);
                    handlerThread.start();
                    looper = handlerThread.getLooper();
                }
                return new Handler(looper);
        }
    }
}
