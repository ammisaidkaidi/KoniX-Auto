package com.google.android.apps.auto.aareceiver.wireless.utils;

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
public final class WifiUtils {
    private static final FloggerLoggerFactory b = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils");
    public final WifiManager a;
    private final Context c;
    private final CarProjectionManager d;

    public WifiUtils(Context context, CarProjectionManager carProjectionManager, WifiManager wifiManager) {
        this.c = context;
        this.d = carProjectionManager;
        this.a = wifiManager;
    }

    public static Optional b(WifiConfiguration wifiConfiguration) {
        try {
            Object obj = WifiConfiguration.class.getField("apBand").get(wifiConfiguration);
            return obj == null ? Optional.empty() : Optional.of(Integer.valueOf(((Integer) obj).intValue()));
        } catch (ReflectiveOperationException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) b.c().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils", "getApBandReflective", 135, "WifiUtils.java")).n("Failed to get apBand");
            return Optional.empty();
        }
    }

    private static String g(String str) {
        return GuavaPlatformUtils.c(h(str));
    }

    private static String h(String str) {
        String str2;
        try {
            str2 = SystemProperties.get(str, "");
        } catch (Error | Exception e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) b.b().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils", "getPropertySafe", 89, "WifiUtils.java")).p("Unable to read property %s.", str);
        }
        return str2 != null ? str2 : "";
    }

    public final ImmutableList a() {
        ImmutableList p;
        try {
            p = ImmutableList.n(CarCompat.getAvailableWifiChannels(this.d, 6));
        } catch (NullPointerException e) {
            FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
            p = ImmutableList.p();
        }
        return (ImmutableList) Collection.EL.stream(IcuConfigProperties).filter(asn.c).collect(coz.a);
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
            return this.a.setWifiEnabled(IcuMessageFormat);
        }
        ((ParameterizedLoggerApi) b.c().h("com/google/android/apps/auto/aareceiver/wireless/utils/WifiUtils", "setWifiEnabled", 63, "WifiUtils.java")).n("Missing permission to start WiFi.");
        return false;
    }
}
