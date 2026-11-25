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
public final class asy implements dhx {
    private final dny a;
    private final /* synthetic */ int b;

    public asy(dny dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                AudioManager audioManager = (AudioManager) ((dhr) this.a).a().getSystemService(AudioManager.class);
                dpx.m(audioManager);
                return audioManager;
            case 1:
                return Boolean.valueOf(bje.c.c(((dhr) this.a).a(), 210100000) == 0);
            case 2:
                return ((BluetoothManager) this.a.a()).getAdapter();
            case 3:
                BluetoothManager bluetoothManager = (BluetoothManager) ((dhr) this.a).a().getSystemService(BluetoothManager.class);
                dpx.m(bluetoothManager);
                return bluetoothManager;
            case 4:
                ConnectivityManager connectivityManager = (ConnectivityManager) ((dhr) this.a).a().getSystemService(ConnectivityManager.class);
                dpx.m(connectivityManager);
                return connectivityManager;
            case 5:
                LocationManager locationManager = (LocationManager) ((dhr) this.a).a().getSystemService(LocationManager.class);
                dpx.m(locationManager);
                return locationManager;
            case 6:
                TelephonyManager telephonyManager = (TelephonyManager) ((dhr) this.a).a().getSystemService(TelephonyManager.class);
                dpx.m(telephonyManager);
                return telephonyManager;
            case 7:
                UserManager userManager = (UserManager) ((dhr) this.a).a().getSystemService(UserManager.class);
                dpx.m(userManager);
                return userManager;
            case 8:
                WifiManager wifiManager = (WifiManager) ((dhr) this.a).a().getSystemService(WifiManager.class);
                dpx.m(wifiManager);
                return wifiManager;
            case 9:
                PackageManager packageManager = ((dhr) this.a).a().getPackageManager();
                dpx.m(packageManager);
                return packageManager;
            case 10:
                CarAppFocusManager carAppFocusManager = (CarAppFocusManager) ((Car) this.a.a()).getCarManager("app_focus");
                dpx.m(carAppFocusManager);
                return carAppFocusManager;
            case 11:
                CarInfoManager carInfoManager = (CarInfoManager) ((Car) this.a.a()).getCarManager("info");
                dpx.m(carInfoManager);
                return carInfoManager;
            case 12:
                return Optional.ofNullable((CarNavigationStatusManager) CarCompat.getCarNavigationManagerSafe((Car) this.a.a()));
            case 13:
                return Build.VERSION.SDK_INT > 29 ? Optional.ofNullable((CarOccupantZoneManager) ((Car) this.a.a()).getCarManager("car_occupant_zone_service")) : Optional.empty();
            case 14:
                CarProjectionManager carProjectionManagerSafe = CarCompat.getCarProjectionManagerSafe((Car) this.a.a());
                dpx.m(carProjectionManagerSafe);
                return carProjectionManagerSafe;
            case 15:
                CarPropertyManager carPropertyManagerSafe = CarCompat.getCarPropertyManagerSafe((Car) this.a.a());
                dpx.m(carPropertyManagerSafe);
                return carPropertyManagerSafe;
            case 16:
                CarSensorManager carSensorManager = (CarSensorManager) ((Car) this.a.a()).getCarManager("sensor");
                dpx.m(carSensorManager);
                return carSensorManager;
            case 17:
                CarUxRestrictionsManager carUxRestrictionsManager = (CarUxRestrictionsManager) ((Car) this.a.a()).getCarManager("uxrestriction");
                dpx.m(carUxRestrictionsManager);
                return carUxRestrictionsManager;
            case 18:
                Car createCar = CarCompat.createCar(((dhr) this.a).a());
                dpx.m(createCar);
                return createCar;
            case 19:
                aun aunVar = ((aus) this.a.a()).e;
                Object obj = aunVar != null ? aunVar.f : baz.a;
                dpx.m(obj);
                return obj;
            default:
                clk n = hg.n(((aus) this.a.a()).b);
                dpx.m(n);
                return n;
        }
    }
}
