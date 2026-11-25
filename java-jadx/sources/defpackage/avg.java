package defpackage;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class avg extends BroadcastReceiver {
    final /* synthetic */ avi a;

    public avg(avi aviVar) {
        this.a = aviVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (!"android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED".equals(intent.getAction())) {
            ((csx) avi.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$2", "onReceive", 116, "BluetoothPeerManager.java")).t("Unexpected action %s in %s", intent.getAction(), this);
            return;
        }
        int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -1);
        synchronized (this.a.i) {
            BluetoothDevice bluetoothDevice2 = this.a.j;
            if (bluetoothDevice2 == null || !bluetoothDevice2.equals(bluetoothDevice)) {
                ((csx) avi.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$2", "onReceive", 130, "BluetoothPeerManager.java")).t("Unexpected device in A2DP state change broadcast intent. Expected: %s received: %s", this.a.j, bluetoothDevice);
            } else {
                avi aviVar = this.a;
                if (aviVar.l && aviVar.j != null && (intExtra == 2 || intExtra == 1)) {
                    ((csx) avi.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "handleA2dpProfileStateChangedLocked", 308, "BluetoothPeerManager.java")).n("A2DP profile is connected while being inhibited");
                    aviVar.d();
                    aviVar.n.removeCallbacks(aviVar.o);
                    aviVar.n.postDelayed(aviVar.o, 6500L);
                }
            }
        }
    }
}
