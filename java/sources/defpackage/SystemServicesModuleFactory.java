package defpackage;

import android.bluetooth.BluetoothManager;
import android.car.Car;
import android.car.CarAppFocusManager;
import android.car.CarInfoManager;
import android.car.CarOccupantZoneManager;
import android.car.CarProjectionManager;
import android.car.drivingstate.CarUxRestrictionsManager;
import android.car.hardware.CarSensorManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.navigation.CarNavigationStatusManager;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.UserManager;
import android.telephony.TelephonyManager;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemServicesModuleFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final /* synthetic */ int b;

    public SystemServicesModuleFactory(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                AudioManager audioManager = (AudioManager) ((AppContextProviderFactory) this.a).a().getSystemService(AudioManager.class);
                CommonObjectsAndPreconditionsUtil.m(audioManager);
                return audioManager;
            case 1:
                return Boolean.valueOf(GoogleApiAvailabilityBase.c.c(((AppContextProviderFactory) this.a).a(), 210100000) == 0);
            case 2:
                return ((BluetoothManager) this.a.a()).getAdapter();
            case 3:
                BluetoothManager bluetoothManager = (BluetoothManager) ((AppContextProviderFactory) this.a).a().getSystemService(BluetoothManager.class);
                CommonObjectsAndPreconditionsUtil.m(bluetoothManager);
                return bluetoothManager;
            case 4:
                ConnectivityManager connectivityManager = (ConnectivityManager) ((AppContextProviderFactory) this.a).a().getSystemService(ConnectivityManager.class);
                CommonObjectsAndPreconditionsUtil.m(connectivityManager);
                return connectivityManager;
            case 5:
                LocationManager locationManager = (LocationManager) ((AppContextProviderFactory) this.a).a().getSystemService(LocationManager.class);
                CommonObjectsAndPreconditionsUtil.m(locationManager);
                return locationManager;
            case 6:
                TelephonyManager telephonyManager = (TelephonyManager) ((AppContextProviderFactory) this.a).a().getSystemService(TelephonyManager.class);
                CommonObjectsAndPreconditionsUtil.m(telephonyManager);
                return telephonyManager;
            case 7:
                UserManager userManager = (UserManager) ((AppContextProviderFactory) this.a).a().getSystemService(UserManager.class);
                CommonObjectsAndPreconditionsUtil.m(userManager);
                return userManager;
            case 8:
                WifiManager wifiManager = (WifiManager) ((AppContextProviderFactory) this.a).a().getSystemService(WifiManager.class);
                CommonObjectsAndPreconditionsUtil.m(wifiManager);
                return wifiManager;
            case 9:
                PackageManager packageManager = ((AppContextProviderFactory) this.a).a().getPackageManager();
                CommonObjectsAndPreconditionsUtil.m(packageManager);
                return packageManager;
            case 10:
                CarAppFocusManager carAppFocusManager = (CarAppFocusManager) ((Car) this.a.a()).getCarManager("app_focus");
                CommonObjectsAndPreconditionsUtil.m(carAppFocusManager);
                return carAppFocusManager;
            case 11:
                CarInfoManager carInfoManager = (CarInfoManager) ((Car) this.a.a()).getCarManager("info");
                CommonObjectsAndPreconditionsUtil.m(carInfoManager);
                return carInfoManager;
            case 12:
                return Optional.ofNullable((CarNavigationStatusManager) CarCompat.getCarNavigationManagerSafe((Car) this.a.a()));
            case 13:
                return Build.VERSION.SDK_INT > 29 ? Optional.ofNullable((CarOccupantZoneManager) ((Car) this.a.a()).getCarManager("car_occupant_zone_service")) : Optional.empty();
            case 14:
                CarProjectionManager carProjectionManagerSafe = CarCompat.getCarProjectionManagerSafe((Car) this.a.a());
                CommonObjectsAndPreconditionsUtil.m(carProjectionManagerSafe);
                return carProjectionManagerSafe;
            case 15:
                CarPropertyManager carPropertyManagerSafe = CarCompat.getCarPropertyManagerSafe((Car) this.a.a());
                CommonObjectsAndPreconditionsUtil.m(carPropertyManagerSafe);
                return carPropertyManagerSafe;
            case 16:
                CarSensorManager carSensorManager = (CarSensorManager) ((Car) this.a.a()).getCarManager("sensor");
                CommonObjectsAndPreconditionsUtil.m(carSensorManager);
                return carSensorManager;
            case 17:
                CarUxRestrictionsManager carUxRestrictionsManager = (CarUxRestrictionsManager) ((Car) this.a.a()).getCarManager("uxrestriction");
                CommonObjectsAndPreconditionsUtil.m(carUxRestrictionsManager);
                return carUxRestrictionsManager;
            case 18:
                Car createCar = CarCompat.createCar(((AppContextProviderFactory) this.a).a());
                CommonObjectsAndPreconditionsUtil.m(createCar);
                return createCar;
            case 19:
                MicrophoneRecorder aunVar = ((AudioStreamConstants) this.a.a()).e;
                Object obj = aunVar != null ? aunVar.f : baz.a;
                CommonObjectsAndPreconditionsUtil.m(obj);
                return obj;
            default:
                GalServiceEndpoint n = OverflowCheckedLongArrayUtil.n(((AudioStreamConstants) this.a.a()).b);
                CommonObjectsAndPreconditionsUtil.m(ProtoLiteTimestampField);
                return n;
        }
    }
}
