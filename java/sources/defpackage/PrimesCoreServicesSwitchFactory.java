package defpackage;

import android.car.CarInfoManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.pm.PackageManager;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesCoreServicesSwitchFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final /* synthetic */ int f;

    public PrimesCoreServicesSwitchFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, int i) {
        this.f = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
    }

    public PrimesCoreServicesSwitchFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, int i, byte[] bArr) {
        this.f = i;
        this.c = dnyVar;
        this.e = dnyVar2;
        this.d = dnyVar3;
        this.b = dnyVar4;
        this.a = dnyVar5;
    }

    public PrimesCoreServicesSwitchFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, int i, char[] cArr) {
        this.f = i;
        this.c = dnyVar;
        this.d = dnyVar2;
        this.e = dnyVar3;
        this.a = dnyVar4;
        this.b = dnyVar5;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.f) {
            case 0:
                return new StartupMetricRecordingService(((MetricDispatcherFactory) this.a).a(), (ListeningScheduledExecutorService) this.b.a(), (Executor) this.c.a(), DoubleCheckProvider.b(this.d), this.e);
            case 1:
                return new CarInfoProvider(((AppContextProviderFactory) this.c).a(), (CarPropertyManager) this.e.a(), (CarInfoManager) this.d.a(), (OverlayableResourcesProvider) this.b.a(), (PackageManager) this.a.a());
            default:
                return new TimerMetricServiceImpl(((MetricDispatcherFactory) this.c).a(), (Executor) this.d.a(), DoubleCheckProvider.b(this.e), this.a, ((SamplingRateProviderFactory) this.b).a());
        }
    }
}
