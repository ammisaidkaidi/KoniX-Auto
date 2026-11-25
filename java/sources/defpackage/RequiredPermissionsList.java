package defpackage;

import android.os.Build;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RequiredPermissionsList {
    public static final ImmutableSet a;

    static {
        ImmutableSetBuilder k = ImmutableSet.k();
        k.d("android.permission.ACCESS_COARSE_LOCATION");
        k.d("android.permission.ACCESS_FINE_LOCATION");
        k.d("android.permission.RECORD_AUDIO");
        k.d("android.permission.READ_PHONE_STATE");
        k.d("android.car.permission.CAR_SPEED");
        k.d("android.car.permission.CAR_ENERGY");
        if (Build.VERSION.SDK_INT >= 31) {
            k.d("android.permission.BLUETOOTH_CONNECT");
            k.d("android.permission.BLUETOOTH_SCAN");
        }
        a = k.f();
    }
}
