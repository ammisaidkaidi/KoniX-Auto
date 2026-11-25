package com.google.android.apps.auto.aareceiver.sensors;

import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RearViewMonitor {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor");
    public final CarPropertyManager b;
    public final DeviceTracker c;
    public boolean e;
    public int f;
    public final CarPropertyManager$CarPropertyEventCallback g = new RearViewPropertyCallback(this);
    public final Handler h = new RearViewMonitorHandler(this, Looper.getMainLooper());
    public final boolean d = AaReceiverFlagsDkcFacade.c();

    public RearViewMonitor(CarPropertyManager carPropertyManager, DeviceTracker bahVar) {
        this.b = carPropertyManager;
        this.c = bahVar;
        this.f = CarCompat.getIntPropertySafe(carPropertyManager, 289408000, 0);
    }
}
