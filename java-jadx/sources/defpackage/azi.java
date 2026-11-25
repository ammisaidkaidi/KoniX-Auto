package defpackage;

import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azi {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor");
    public final CarPropertyManager b;
    public final bah c;
    public boolean e;
    public int f;
    public final CarPropertyManager$CarPropertyEventCallback g = new azg(this);
    public final Handler h = new azh(this, Looper.getMainLooper());
    public final boolean d = dka.c();

    public azi(CarPropertyManager carPropertyManager, bah bahVar) {
        this.b = carPropertyManager;
        this.c = bahVar;
        this.f = CarCompat.getIntPropertySafe(carPropertyManager, 289408000, 0);
    }
}
