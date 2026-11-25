package com.google.android.apps.auto.aareceiver.service;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothStateChangeReceiver extends LazyInjectedBroadcastReceiver {
    private static final FloggerLoggerFactory b = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/BluetoothStateChangeReceiver");
    public DeviceTracker a;

    @Override // defpackage.LazyInjectedBroadcastReceiver, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        BluetoothDevice bluetoothDevice;
        a(context);
        String action = intent.getAction();
        if (action == null) {
            ((ParameterizedLoggerApi) b.b().h("com/google/android/apps/auto/aareceiver/service/BluetoothStateChangeReceiver", "onReceive", 33, "BluetoothStateChangeReceiver.java")).n("Received intent with null action");
            return;
        }
        if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(action)) {
            int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", Integer.MIN_VALUE);
            int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", Integer.MIN_VALUE);
            if (intExtra == 10 && intExtra2 == 12 && (bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")) != null) {
                DeviceTracker bahVar = this.a;
                ProjectionDevice b2 = bahVar.d.b(bluetoothDevice);
                if (b2 == null) {
                    return;
                }
                if (((ProjectionDeviceNotificationInfo) bahVar.f.a(bluetoothDevice)) != null && bahVar.w(b2)) {
                    bahVar.h.a();
                }
                bahVar.d.k(bluetoothDevice);
            }
        }
    }
}
