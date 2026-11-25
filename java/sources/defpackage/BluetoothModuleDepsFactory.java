package defpackage;

import android.bluetooth.BluetoothAdapter;
import android.car.CarProjectionManager;
import android.content.Context;
import android.media.AudioManager;
import android.net.wifi.WifiManager;
import android.os.UserManager;
import com.google.android.projection.protocol.GalReceiver;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothModuleDepsFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final /* synthetic */ int e;

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i) {
        this.e = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, byte[] bArr) {
        this.e = i;
        this.d = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
        this.b = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, char[] cArr) {
        this.e = i;
        this.d = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.a = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, float[] fArr) {
        this.e = i;
        this.a = dnyVar;
        this.d = dnyVar2;
        this.c = dnyVar3;
        this.b = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, int[] iArr) {
        this.e = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, short[] sArr) {
        this.e = i;
        this.d = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
        this.c = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, boolean[] zArr) {
        this.e = i;
        this.d = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.a = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, byte[][] bArr) {
        this.e = i;
        this.b = dnyVar;
        this.c = dnyVar2;
        this.d = dnyVar3;
        this.a = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, char[][] cArr) {
        this.e = i;
        this.a = dnyVar;
        this.d = dnyVar2;
        this.b = dnyVar3;
        this.c = dnyVar4;
    }

    public BluetoothModuleDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, int i, short[][] sArr) {
        this.e = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.e) {
            case 0:
                return new BluetoothAdapterManager(((AppContextProviderFactory) this.a).a(), (BluetoothAdapter) this.b.a(), (TelemetryTracker) this.c.a(), (Executor) this.d.a());
            case 1:
                AudioManager audioManager = (AudioManager) this.d.a();
                GalReceiver galReceiver = (GalReceiver) ((SingleCheckProvider) this.a).a;
                LifecycleRegistry znVar = (LifecycleRegistry) this.c.a();
                return new VoiceSessionAudioFocusManager(audioManager, galReceiver, znVar, AppProvidersSwitchFactory.b());
            case 2:
                return new RfcommChannelStateHolder(((AppContextProviderFactory) this.d).a(), (BluetoothAdapter) this.b.a(), (UserManager) this.c.a(), (TelemetryTracker) this.a.a());
            case 3:
                return OverlayableResourcesProvider.b(((AppContextProviderFactory) this.d).a(), ((OverlayableResourcesFactory) this.a).a(), (CarProjectionManager) this.b.a(), (OemSettings) this.c.a());
            case 4:
                return new CallAvailabilityMonitor(((AppContextProviderFactory) this.b).a(), (GalReceiver) ((SingleCheckProvider) this.a).a, (LifecycleRegistry) this.c.a(), (DeviceTracker) this.d.a());
            case 5:
                Context a = ((AppContextProviderFactory) this.d).a();
                CarProjectionManager carProjectionManager = (CarProjectionManager) this.b.a();
                WifiManager wifiManager = (WifiManager) this.c.a();
                return new WifiUtils(a, carProjectionManager, wifiManager);
            case 6:
                return new ActivityLevelJankMonitor(DoubleCheckProvider.b(this.a), this.d, (GuavaOptional) ((SingleCheckProvider) this.c).a, (Executor) this.b.a());
            case 7:
                return new StartupMetricRecordingServiceImpl((PrimesLifecycleRegistrar) this.b.a(), this.c, this.d, this.a);
            case 8:
                ((DelegatingProviderWrapper) this.a).b();
                ((TraceSamplerOptionalFactory) this.d).a();
                return ImmutableSet.o((PrimesMetricServiceLifecycle) this.c.a());
            default:
                return new MetricModuleProviders(this.b, this.a, this.c, this.d);
        }
    }
}
