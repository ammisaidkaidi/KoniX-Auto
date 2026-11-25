package defpackage;

import android.bluetooth.BluetoothAdapter;
import android.car.CarProjectionManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.HandlerThread;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothModuleFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final /* synthetic */ int c;

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i) {
        this.c = i;
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, byte[] bArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, char[] cArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, float[] fArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, int[] iArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, short[] sArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, boolean[] zArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, byte[][] bArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, char[][] cArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, int[][] iArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public BluetoothModuleFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, int i, short[][] sArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        Object obj;
        boolean z = false;
        switch (this.c) {
            case 0:
                AudioFocusLossHandlerBase attVar = AaReceiverFlags45357540Facade.a.a().a() ? (AudioFocusLossHandlerBase) DoubleCheckProvider.b(this.a).a() : (AudioFocusLossHandlerBase) DoubleCheckProvider.b(this.b).a();
                CommonObjectsAndPreconditionsUtil.m(attVar);
                return attVar;
            case 1:
                Context a = ((AppContextProviderFactory) this.a).a();
                PackageManager packageManager = (PackageManager) this.b.a();
                if (!AaReceiverFlags45351251Facade.a.a().a()) {
                    z = true;
                } else if (Settings.Secure.getString(a.getContentResolver(), "assistant") != null) {
                    z = true;
                } else {
                    List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(new Intent("android.service.voice.VoiceInteractionService"), 786432);
                    if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                        z = true;
                    }
                }
                return Boolean.valueOf(IcuMessageFormat);
            case 2:
                LifecycleRegistry znVar = (LifecycleRegistry) this.b.a();
                return new MicrophoneRecorder(znVar);
            case 3:
                BluetoothAdapter bluetoothAdapter = (BluetoothAdapter) this.a.a();
                DaggerProviderInterface dnyVar = this.b;
                if (bluetoothAdapter == null) {
                    ((ParameterizedLoggerApi) BluetoothCallbackMarker.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothModule", "provideBluetoothService", 33, "BluetoothModule.java")).n("No bluetooth adapter found.");
                    obj = baz.a;
                } else if (TextUtils.isEmpty(bluetoothAdapter.getAddress())) {
                    ((ParameterizedLoggerApi) BluetoothCallbackMarker.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothModule", "provideBluetoothService", 37, "BluetoothModule.java")).n("No bluetooth-address found.");
                    obj = baz.a;
                } else {
                    obj = ((BluetoothPeerManager) dnyVar.a()).h;
                }
                CommonObjectsAndPreconditionsUtil.m(obj);
                return obj;
            case 4:
                return new TwoProviderHolder(this.b, this.a);
            case 5:
                return new PhenotypeDatabaseImpl(((AppContextProviderFactory) this.a).a(), (ListeningExecutorService) this.b.a(), new ProjectionIntentHelper(), null);
            case 6:
                return new RearViewMonitor((CarPropertyManager) this.a.a(), (DeviceTracker) this.b.a());
            case 7:
                SensorFeed azjVar = AaReceiverFlags45350698Facade.a.a().a() ? (SensorFeed) DoubleCheckProvider.b(this.a).a() : (SensorFeed) DoubleCheckProvider.b(this.b).a();
                CommonObjectsAndPreconditionsUtil.m(azjVar);
                return azjVar;
            case 8:
                return new PersistentServiceController(((AppContextProviderFactory) this.a).a(), (CarProjectionManager) this.b.a());
            case 9:
                TimeSource c = ClearcutProviders.c();
                StackClassGetterBase a2 = ((VideoLatencyCheckerModuleFactory) this.b).a();
                return new TelemetryTracker(c, a2);
            case 10:
                Context a3 = ((AppContextProviderFactory) this.a).a();
                WirelessSocketProvider bduVar = (WirelessSocketProvider) this.b.a();
                WirelessTransportDeps cmgVar = new WirelessTransportDeps();
                cmgVar.a = a3;
                cmgVar.b = bduVar;
                if (cmgVar.a == null) {
                    throw new IllegalArgumentException("Context was not provided");
                }
                TransportFactoryRegistry cmjVar = new TransportFactoryRegistry();
                if (cmgVar.b != null) {
                    cmjVar.c = Arrays.asList(new UsbTransportFactory(cmgVar.a, 0), new UsbTransportFactory(cmgVar.a, 1, null), new TcpTransportFactory(cmgVar.b));
                } else {
                    cmjVar.c = Arrays.asList(new UsbTransportFactory(cmgVar.a, 0), new UsbTransportFactory(cmgVar.a, 1, null));
                }
                return cmjVar;
            case 11:
                return new HotwordManager(((AppContextProviderFactory) this.a).a(), (ProjectionSession) ((SingleCheckProvider) this.b).a);
            case 12:
                PhenotypeFlagSource bsvVar = new PhenotypeFlagSource((Context) ((SingleCheckProvider) this.b).a, ((ContextProviderFactory_bsq) this.a).a(), null);
                HandlerThread handlerThread = new HandlerThread("CheckboxObserverThread");
                handlerThread.start();
                bsvVar.a.getContentResolver().registerContentObserver(Settings.Global.getUriFor("multi_cb"), false, new PhenotypeFlagContentObserver(bsvVar, new CallbackHandlerBase(handlerThread.getLooper())));
                return bsvVar;
            case 13:
                SharedPreferences sharedPreferences = (SharedPreferences) ((StopwatchTicker) ((SharedPreferencesOptionalFactory) this.b).a().b(new PrimesTagSupplier(((AppContextProviderFactory) this.a).a(), 1))).a();
                CommonObjectsAndPreconditionsUtil.m(sharedPreferences);
                return sharedPreferences;
            case 14:
                return new PrimesExecutor((ListeningScheduledExecutorService) this.a.a(), (PrimesLifecycleRegistrar) this.b.a());
            case 15:
                JankMetricConfig bujVar = (JankMetricConfig) this.b.a();
                PrimesApiProvider a4 = ((PrimesApiModuleFactory) this.a).a();
                int i = bujVar.b;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(i, new PrimesThreadFactory(bujVar.a), new PrimesRejectedExecutionPolicy());
                scheduledThreadPoolExecutor.setMaximumPoolSize(NavInstructionTypeEnum);
                ListeningScheduledExecutorService l = ViewCompatApi19Statics.l(scheduledThreadPoolExecutor);
                PrimesApiInterface bryVar = a4.a;
                if (bryVar != null) {
                    l = bryVar.a();
                }
                CommonObjectsAndPreconditionsUtil.m(ProtoMessageSingleStringL);
                return l;
            case 16:
                return new PrimesLifecycleRegistrar(((AppContextProviderFactory) this.a).a(), (PrimesLifecycleCallbacksHolder) this.b.a());
            case 17:
                Object o = ((GuavaOptional) ((SingleCheckProvider) this.b).a).d() ? ImmutableSet.o((PrimesMetricServiceLifecycle) this.a.a()) : csf.a;
                CommonObjectsAndPreconditionsUtil.m(IcuConfigApostropheModeAction);
                return o;
            case 18:
                Object o2 = !((GuavaOptional) ((SingleCheckProvider) this.b).a).d() ? csf.a : ImmutableSet.o((PrimesMetricServiceLifecycle) this.a.a());
                CommonObjectsAndPreconditionsUtil.m(o2);
                return o2;
            case 19:
                ((DelegatingProviderWrapper) this.b).b();
                return ImmutableSet.o((PrimesMetricServiceLifecycle) this.a.a());
            default:
                ((DelegatingProviderWrapper) this.b).b();
                return ImmutableSet.o((PrimesMetricServiceLifecycle) this.a.a());
        }
    }
}
