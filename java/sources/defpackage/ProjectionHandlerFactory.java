package defpackage;

import android.car.CarProjectionManager;
import android.content.Context;
import j$.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionHandlerFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final /* synthetic */ int h;

    public ProjectionHandlerFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, int i) {
        this.h = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
    }

    public ProjectionHandlerFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, int i, byte[] bArr) {
        this.h = i;
        this.g = dnyVar;
        this.b = dnyVar2;
        this.f = dnyVar3;
        this.c = dnyVar4;
        this.e = dnyVar5;
        this.d = dnyVar6;
        this.a = dnyVar7;
    }

    public ProjectionHandlerFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, int i, char[] cArr) {
        this.h = i;
        this.f = dnyVar;
        this.d = dnyVar2;
        this.g = dnyVar3;
        this.b = dnyVar4;
        this.c = dnyVar5;
        this.a = dnyVar6;
        this.e = dnyVar7;
    }

    public ProjectionHandlerFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, int i, short[] sArr) {
        this.h = i;
        this.f = dnyVar;
        this.a = dnyVar2;
        this.d = dnyVar3;
        this.g = dnyVar4;
        this.b = dnyVar5;
        this.c = dnyVar6;
        this.e = dnyVar7;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.h) {
            case 0:
                return new AndroidAutoHeadunitProjectionHandler(((AppContextProviderFactory) this.a).a(), (DeviceTracker) this.b.a(), ((ProjectionSessionDepsFactory) this.c).a(), ((ClusterDisplayAvailabilityFactory) this.d).a(), (RearViewMonitor) this.e.a(), ((ContextProviderFactory_axu) this.f).a(), (Optional) ((SingleCheckProvider) this.g).a, null, null, null);
            case 1:
                return new BluetoothPeerManager(((AppContextProviderFactory) this.g).a(), (CarProjectionManager) this.b.a(), (DeviceTracker) this.f.a(), (ProjectionDevice) ((SingleCheckProvider) this.c).a, (ProjectionSession) ((SingleCheckProvider) this.e).a, (BluetoothAdapterManager) this.d.a(), (Executor) this.a.a());
            case 2:
                MetricDispatcherAssistedFactory a = ((MetricDispatcherFactory) this.f).a();
                Context a2 = ((AppContextProviderFactory) this.d).a();
                ListeningScheduledExecutorService daiVar = (ListeningScheduledExecutorService) this.g.a();
                DaggerInternalFactoryMarker b = DoubleCheckProvider.b(this.b);
                DaggerProviderInterface dnyVar = this.c;
                return new BatteryTraceRecorder(a, a2, daiVar, b, dnyVar, this.e);
            default:
                return new PackageStatsMetricService(((MetricDispatcherFactory) this.f).a(), ((AppContextProviderFactory) this.a).a(), (PrimesLifecycleRegistrar) this.d.a(), (Executor) this.g.a(), DoubleCheckProvider.b(this.b), ((PackageStatsCaptureDepsFactory) this.c).a(), this.e);
        }
    }
}
