package defpackage;

import android.car.CarAppFocusManager;
import android.car.CarInfoManager;
import android.car.hardware.CarSensorManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.navigation.CarNavigationStatusManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.NavigationStatus;
import j$.util.Optional;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationInfoValidatorFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final /* synthetic */ int d;

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i) {
        this.d = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, byte[] bArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, char[] cArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, float[] fArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, int[] iArr) {
        this.d = i;
        this.a = dnyVar;
        this.c = dnyVar2;
        this.b = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, short[] sArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, boolean[] zArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, byte[][] bArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, char[][] cArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, float[][] fArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, int[][] iArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, short[][] sArr) {
        this.d = i;
        this.c = dnyVar;
        this.b = dnyVar2;
        this.a = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, boolean[][] zArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, byte[][][] bArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, char[][][] cArr) {
        this.d = i;
        this.a = dnyVar;
        this.c = dnyVar2;
        this.b = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, float[][][] fArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, int[][][] iArr) {
        this.d = i;
        this.c = dnyVar;
        this.b = dnyVar2;
        this.a = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, short[][][] sArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public PhenotypeRegistrationInfoValidatorFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, int i, boolean[][][] zArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [j$.util.Optional] */
    /* JADX WARN: Type inference failed for: r0v27, types: [j$.util.Optional] */
    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        Object navigationStatus;
        ApConfiguration bdtVar;
        Object obj;
        String str = "PhenotypeRegistrationInfoModule.java";
        switch (this.d) {
            case 0:
                return new FlagSourceDependencies(this.a, this.b, this.c);
            case 1:
                return new MultipleAudioFocusManager((AudioManager) this.b.a(), (GalReceiver) ((SingleCheckProvider) this.a).a, (LifecycleRegistry) this.c.a(), AppProvidersSwitchFactory.b());
            case 2:
                Context a = ((AppContextProviderFactory) this.b).a();
                NavigationAppFocusManager axcVar = (NavigationAppFocusManager) this.a.a();
                Optional optional = (Optional) this.c.a();
                ClearcutProviders.c();
                if (optional.isPresent()) {
                    TurnDataNavStatusListener awnVar = new TurnDataNavStatusListener(a, (CarNavigationStatusManager) optional.get(), axcVar, a.getResources().getConfiguration());
                    NavigationAppFocusManager axcVar2 = awnVar.c;
                    TurnListenerFieldHolder awkVar = awnVar.i;
                    awkVar.getClass();
                    axcVar2.e = new WeakReference(awkVar);
                    navigationStatus = new NavigationStatus(awnVar);
                } else {
                    navigationStatus = baz.a;
                }
                CommonObjectsAndPreconditionsUtil.m(navigationStatus);
                return navigationStatus;
            case 3:
                return new CredentialAssetLoader(((AppContextProviderFactory) this.c).a(), (ImmutableList) this.a.a(), (ImmutableMapBase) this.b.a());
            case 4:
                return new NavigationAppFocusManager(((AppContextProviderFactory) this.a).a(), (PackageManager) this.c.a(), (CarAppFocusManager) this.b.a());
            case 5:
                Context a2 = ((AppContextProviderFactory) this.b).a();
                ListeningScheduledExecutorService daiVar = (ListeningScheduledExecutorService) this.a.a();
                PhenotypeDatabaseApi ceoVar = (PhenotypeDatabaseApi) this.c.a();
                StopwatchTicker j = ex.j(daiVar);
                return new PhenotypeContext(a2, j, ex.j(ceoVar), GuavaOptional.e(new StickyAccountManager(ProtoMessageTwoIntsAndFlagValue)));
            case 6:
                Context a3 = ((AppContextProviderFactory) this.b).a();
                PackageManager packageManager = (PackageManager) this.a.a();
                PhenotypeRegistrationParser chaVar = (PhenotypeRegistrationParser) this.c.a();
                try {
                    Iterator it = chaVar.c(packageManager.getPackageInfo(a3.getPackageName(), 0), chaVar.b(a3.getPackageName())).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ProtoMsgManyMixedFields dbtVar = (ProtoMsgManyMixedFields) it.next();
                            if ("com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection".equals(dbtVar.d.replace(".automation", ""))) {
                                str = Optional.of(dbtVar);
                            }
                        } else {
                            ((ParameterizedLoggerApi) PhenotypePrivateModuleTag.a.c().h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesRegistrationInfo", 59, "PhenotypeRegistrationInfoModule.java")).n("Expected to have Phenotype registration info, but found none");
                            str = Optional.empty();
                        }
                    }
                    return str;
                } catch (PackageManager.NameNotFoundException e) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) PhenotypePrivateModuleTag.a.c().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesRegistrationInfo", 62, str)).n("PackageName not found");
                    return Optional.empty();
                }
            case 7:
                return new CarPropertiesFeed(((AppContextProviderFactory) this.c).a(), (CarPropertyManager) this.a.a(), (CarInfoManager) this.b.a());
            case 8:
                return new CarSensorsFeed(((AppContextProviderFactory) this.c).a(), (CarSensorManager) this.a.a(), (CarInfoManager) this.b.a());
            case 9:
                return new SensorManager((LifecycleRegistry) this.c.a(), (CarInfoProvider) this.b.a(), ((SetProviderFactory) this.a).a());
            case 10:
                return new OemSettingsPrefsImpl(((AppContextProviderFactory) this.b).a(), (UsbDeviceAllowlistChecker) this.a.a(), (WifiUtils) this.c.a());
            case 11:
                AccessPoint bdqVar = (AccessPoint) this.b.a();
                SamplingRateProvider a4 = ((TracerFactory) this.a).a();
                if (((OemSettings) this.c.a()).e()) {
                    bdtVar = bdqVar.b();
                    if (bdtVar == null) {
                        bdtVar = new ApConfiguration(CarCompat.getPersistentApSsid(), CarCompat.getApBssidSafe(null), CarCompat.getPersistentApPsk(), 1, null);
                    }
                } else {
                    bdtVar = null;
                }
                if (bdtVar != null) {
                    WifiUtils bhiVar = (WifiUtils) a4.a.a();
                    bhiVar.getClass();
                    obj = new WifiCredentialsProvider(bdtVar, bhiVar).b;
                } else {
                    obj = baz.a;
                }
                CommonObjectsAndPreconditionsUtil.m(obj);
                return obj;
            case 12:
                Executor executor = ((JankMetricConfig) this.c.a()).c ? (Executor) this.b.a() : (Executor) this.a.a();
                CommonObjectsAndPreconditionsUtil.m(executor);
                return executor;
            case 13:
                return new PrimesDeviceFormFactor(((AppContextProviderFactory) this.b).a(), ((MemoryMetricServiceFactory) this.a).a(), (String) this.c.a());
            case 14:
                return new FrameDurationCalculator();
            case 15:
                ((DelegatingProviderWrapper) this.c).b();
                return ImmutableSet.o((PrimesMetricServiceLifecycle) this.b.a());
            case 16:
                Random random = (Random) this.c.a();
                SamplingRandomTable cbrVar = (SamplingRandomTable) this.b.a();
                return new SamplerConfigurationChooser(random, cbrVar);
            case 17:
                return new MetricTransmitterRegistry(((AppContextProviderFactory) this.b).a(), ((SetProviderFactory) this.a).a(), ((SetProviderFactory) this.c).a());
            default:
                return new ClearcutSnapshotTransmitterImpl(((AppContextProviderFactory) this.b).a(), (GuavaOptional) ((SingleCheckProvider) this.a).a, ((PrimesPhenotypeConfigSupplierFactory) this.c).a(), ClearcutProviders.b());
        }
    }
}
