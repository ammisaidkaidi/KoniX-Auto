package defpackage;

import android.car.CarProjectionManager;
import android.location.LocationManager;
import android.net.wifi.WifiManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccessPointDepsSwitchFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final /* synthetic */ int g;

    public AccessPointDepsSwitchFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, int i) {
        this.g = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
    }

    public AccessPointDepsSwitchFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, int i, byte[] bArr) {
        this.g = i;
        this.d = dnyVar;
        this.b = dnyVar2;
        this.f = dnyVar3;
        this.a = dnyVar4;
        this.c = dnyVar5;
        this.e = dnyVar6;
    }

    public AccessPointDepsSwitchFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, int i, char[] cArr) {
        this.g = i;
        this.d = dnyVar;
        this.a = dnyVar2;
        this.e = dnyVar3;
        this.b = dnyVar4;
        this.c = dnyVar5;
        this.f = dnyVar6;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.g) {
            case 0:
                return new AccessPoint(((AppContextProviderFactory) this.a).a(), (WifiManager) this.b.a(), (CarProjectionManager) this.c.a(), AppProvidersSwitchFactory.c(), (ListeningExecutorService) this.d.a(), (TelemetryTracker) this.e.a(), (LocationManager) this.f.a());
            case 1:
                return new DeviceTracker(((AppContextProviderFactory) this.d).a(), (OemSettings) this.b.a(), (DeviceRegistryBase) this.f.a(), (CarProjectionManager) this.a.a(), (AppContextModule) this.c.a(), ((ContextProviderFactory_axu) this.e).a(), null, null, null);
            default:
                return new PrimesTracerImpl(((MetricDispatcherFactory) this.d).a(), (ListeningScheduledExecutorService) this.a.a(), DoubleCheckProvider.b(this.e), DoubleCheckProvider.b(this.b), this.c, ((SamplingRateProviderFactory) this.f).a());
        }
    }
}
