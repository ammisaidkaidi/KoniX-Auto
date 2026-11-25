package com.google.android.apps.auto.aareceiver.service;

import android.car.CarProjectionManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.apps.auto.aareceiver.service.PersistentService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PersistentServiceController {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/PersistentServiceController");
    public final Context b;
    public final CarProjectionManager c;
    public PersistentService d;
    public boolean e = false;
    UsbDeviceConnection f;
    UsbDevice g;

    public PersistentServiceController(Context context, CarProjectionManager carProjectionManager) {
        this.b = context;
        this.c = carProjectionManager;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_BACKGROUND");
        intentFilter.addAction("android.intent.action.USER_FOREGROUND");
        context.registerReceiver(new UserSwitchBroadcastReceiver(this), intentFilter);
    }

    public static Intent a(Context context) {
        return new Intent(context.getApplicationContext(), (Class<?>) PersistentService.class);
    }

    public final void b(PersistentService persistentService) {
        this.d = persistentService;
        if (persistentService != null) {
            persistentService.e.n(new PersistentServiceSessionListener(this));
        }
    }

    public final void c() {
        if (!this.e) {
            CarCompat.registerProjectionRunner(this.c, a(this.b));
            this.e = true;
        }
        PersistentService persistentService = this.d;
        if (persistentService != null) {
            persistentService.a();
        }
    }
}
