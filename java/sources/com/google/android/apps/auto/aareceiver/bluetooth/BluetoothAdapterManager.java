package com.google.android.apps.auto.aareceiver.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothAdapterManager {
    private static final FloggerLoggerFactory i = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager");
    public final Context b;
    public final BluetoothAdapter c;
    public final TelemetryTracker d;
    public final Executor e;
    public final Handler a = new Handler();
    public final Object f = new Object();
    public boolean g = false;
    public final Set h = new HashSet();

    public BluetoothAdapterManager(Context context, BluetoothAdapter bluetoothAdapter, TelemetryTracker bdeVar, Executor executor) {
        this.b = context;
        this.c = bluetoothAdapter;
        this.d = bdeVar;
        this.e = executor;
    }

    final void a(int i2) {
        try {
            if (Build.VERSION.SDK_INT <= 29) {
                ((Boolean) BluetoothAdapter.class.getDeclaredMethod("setScanMode", Integer.TYPE, Integer.TYPE).invoke(this.c, 23, Integer.valueOf(i2))).booleanValue();
            } else {
                BluetoothAdapter.class.getDeclaredMethod("setDiscoverableTimeout", Integer.TYPE).invoke(this.c, Integer.valueOf(i2));
                ((Boolean) BluetoothAdapter.class.getDeclaredMethod("setScanMode", Integer.TYPE).invoke(this.c, 23)).booleanValue();
            }
        } catch (ReflectiveOperationException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) i.b().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager", "setScanMode", 219, "BluetoothAdapterManager.java")).n("Could not call setScanMode on BluetoothAdapter");
        }
    }
}
