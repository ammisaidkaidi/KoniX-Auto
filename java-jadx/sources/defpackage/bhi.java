package defpackage;

import android.car.CarProjectionManager;
import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.SystemProperties;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.util.Collection;
import j$.util.Optional;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bhi {
    private static final csz b = csz.g("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils");
    public final WifiManager a;
    private final Context c;
    private final CarProjectionManager d;

    public bhi(Context context, CarProjectionManager carProjectionManager, WifiManager wifiManager) {
        this.c = context;
        this.d = carProjectionManager;
        this.a = wifiManager;
    }

    public static Optional b(WifiConfiguration wifiConfiguration) {
        try {
            Object obj = WifiConfiguration.class.getField("apBand").get(wifiConfiguration);
            return obj == null ? Optional.empty() : Optional.of(Integer.valueOf(((Integer) obj).intValue()));
        } catch (ReflectiveOperationException e) {
            ((csx) ((csx) b.c().g(e)).h("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils", "getApBandReflective", 135, "WifiUtils.java")).n("Failed to get apBand");
            return Optional.empty();
        }
    }

    private static String g(String str) {
        return coe.c(h(str));
    }

    private static String h(String str) {
        String str2;
        try {
            str2 = SystemProperties.get(str, "");
        } catch (Error | Exception e) {
            ((csx) ((csx) b.b().g(e)).h("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils", "getPropertySafe", 89, "WifiUtils.java")).p("Unable to read property %s.", str);
        }
        return str2 != null ? str2 : "";
    }

    public final cqh a() {
        cqh p;
        try {
            p = cqh.n(CarCompat.getAvailableWifiChannels(this.d, 6));
        } catch (NullPointerException e) {
            csz.b.y(TimeUnit.SECONDS);
            p = cqh.p();
        }
        return (cqh) Collection.EL.stream(p).filter(asn.c).collect(coz.a);
    }

    public final boolean c() {
        return !a().isEmpty();
    }

    /* JADX WARN: Unreachable blocks removed: 9, instructions: 17 */
    public final boolean d() {
        return true;
    }

    public final boolean e() {
        return ew.w(g("ro.boot.setupwizard_mode")) || ew.w(g("ro.setupwizard.mode"));
    }

    public final boolean f(boolean z) {
        if (this.c.checkCallingOrSelfPermission("android.permission.CHANGE_WIFI_STATE") == 0) {
            return this.a.setWifiEnabled(z);
        }
        ((csx) b.c().h("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils", "setWifiEnabled", 63, "WifiUtils.java")).n("Missing permission to start WiFi.");
        return false;
    }
}
