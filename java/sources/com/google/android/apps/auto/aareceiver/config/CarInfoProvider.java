package com.google.android.apps.auto.aareceiver.config;

import android.car.CarInfoManager;
import android.car.hardware.property.CarInternalErrorException;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.PropertyAccessDeniedSecurityException;
import android.car.hardware.property.PropertyNotAvailableAndRetryException;
import android.car.hardware.property.PropertyNotAvailableException;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.projection.protocol.GalReceiver;
import j$.util.DesugarArrays;
import j$.util.Optional;
import j$.util.function.IntFunction;
import java.util.Locale;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarInfoProvider {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/config/CarInfoProvider");
    public final CarInfoManager b;
    private final Context c;
    private final CarPropertyManager d;
    private final PackageManager e;
    private final SharedPreferences f;
    private final OverlayableResourcesProvider g;

    public CarInfoProvider(Context context, CarPropertyManager carPropertyManager, CarInfoManager carInfoManager, OverlayableResourcesProvider ayfVar, PackageManager packageManager) {
        this.c = context;
        this.d = carPropertyManager;
        this.f = context.getSharedPreferences("car_info", 0);
        this.b = carInfoManager;
        this.g = ayfVar;
        this.e = packageManager;
    }

    public static Object[] c(int[] iArr, final IntFunction intFunction, IntFunction intFunction2, final String str) {
        return DesugarArrays.stream(iArr).mapToObj(new IntFunction() { // from class: awr
            @Override // j$.util.function.IntFunction
            public final Object apply(int i) {
                IntFunction intFunction3 = IntFunction.this;
                String str2 = str;
                Object apply = intFunction3.apply(NavInstructionTypeEnum);
                if (apply == null) {
                    ((ParameterizedLoggerApi) CarInfoProvider.a.c().h("com/google/android/apps/auto/aareceiver/config/CarInfoProvider", "lambda$translateCarProperty$3", 173, "CarInfoProvider.java")).s("Could not parse %s %d - skipping", str2, i);
                }
                return apply;
            }
        }).filter(asn.b).toArray(intFunction2);
    }

    public final GalReceiver.CarInfo a() {
        String str;
        int i;
        String str2 = (String) b(String.class, 286261505).orElse("<unknown make>");
        String str3 = (String) b(String.class, 286261506).orElse("<unknown model>");
        String str4 = (String) b(Integer.class, 289407235).map(awq.c).orElse("<unknown year>");
        String string = this.f.getString("vehicle_id", null);
        if (string == null) {
            String uuid = UUID.randomUUID().toString();
            this.f.edit().putString("vehicle_id", uuid).apply();
            str = uuid;
        } else {
            str = string;
        }
        switch (((Integer) b(Integer.class, 356516106).orElse(0)).intValue()) {
            case 1:
            case 16:
            case 256:
                i = 0;
                break;
            case 2:
            case 32:
            case 512:
                i = 2;
                break;
            case 4:
            case 64:
            case 1024:
                i = 1;
                break;
            default:
                i = 3;
                break;
        }
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        String.valueOf(str6).length();
        String concat = String.valueOf(str6).concat(" [AAR]");
        String str7 = Build.FINGERPRINT;
        try {
            PackageInfo packageInfo = this.e.getPackageInfo(this.c.getPackageName(), 0);
            return new GalReceiver.CarInfo(str2, str3, str4, str, i, str5, concat, str7, String.format(Locale.ROOT, "AAR.%d (%s)", Long.valueOf(packageInfo.getLongVersionCode()), packageInfo.versionName), this.g.a() >> 8, (String) b(String.class, 286261505).orElse(""));
        } catch (PackageManager.NameNotFoundException e) {
            throw new AssertionError(ProtoFlagValueMessage);
        }
    }

    public final Optional b(Class cls, int i) {
        try {
            return Optional.ofNullable(this.d.getProperty(cls, i, 0)).map(awq.a);
        } catch (CarInternalErrorException | PropertyAccessDeniedSecurityException | PropertyNotAvailableAndRetryException | PropertyNotAvailableException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/config/CarInfoProvider", "getPropertySafe", 236, "CarInfoProvider.java")).o("Failed to read property %d", i);
            return Optional.empty();
        }
    }
}
