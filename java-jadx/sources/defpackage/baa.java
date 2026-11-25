package defpackage;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class baa extends bal {
    private static final csz b = csz.g("com/google/android/apps/auto/aareceiver/service/BluetoothStateChangeReceiver");
    public bah a;

    @Override // defpackage.bal, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        BluetoothDevice bluetoothDevice;
        a(context);
        String action = intent.getAction();
        if (action == null) {
            ((csx) b.b().h("com/google/android/apps/auto/aareceiver/service/BluetoothStateChangeReceiver", "onReceive", 33, "BluetoothStateChangeReceiver.java")).n("Received intent with null action");
            return;
        }
        if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(action)) {
            int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", Integer.MIN_VALUE);
            int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", Integer.MIN_VALUE);
            if (intExtra == 10 && intExtra2 == 12 && (bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")) != null) {
                bah bahVar = this.a;
                awo b2 = bahVar.d.b(bluetoothDevice);
                if (b2 == null) {
                    return;
                }
                if (((baf) bahVar.f.a(bluetoothDevice)) != null && bahVar.w(b2)) {
                    bahVar.h.a();
                }
                bahVar.d.k(bluetoothDevice);
            }
        }
    }
}
