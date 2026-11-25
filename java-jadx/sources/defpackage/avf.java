package defpackage;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import j$.nio.charset.StandardCharsets;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
final class avf extends BroadcastReceiver {
    final /* synthetic */ avi a;

    public avf(avi aviVar) {
        this.a = aviVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        BluetoothDevice a;
        avi aviVar = this.a;
        if ("android.bluetooth.device.action.PAIRING_REQUEST".equals(intent.getAction()) && (a = aviVar.a()) != null && a.equals((BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE"))) {
            int intExtra = intent.getIntExtra("android.bluetooth.device.extra.PAIRING_VARIANT", Integer.MIN_VALUE);
            int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PAIRING_KEY", Integer.MIN_VALUE);
            if (intExtra2 == Integer.MIN_VALUE) {
                ((csx) avi.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "handlePairingRequestBroadcast", 377, "BluetoothPeerManager.java")).n("Received pairing request broadcast with missing pairing key");
                return;
            }
            switch (intExtra) {
                case 0:
                    String format = String.format(Locale.US, "%04d", Integer.valueOf(intExtra2));
                    aviVar.h.nativeSendAuthData(format, 4);
                    a.setPin(format.getBytes(StandardCharsets.UTF_8));
                    break;
                case 1:
                default:
                    ((csx) avi.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "handlePairingRequestBroadcast", 407, "BluetoothPeerManager.java")).o("Invalid Bluetooth pairing method: %d", intExtra);
                    return;
                case 2:
                    String format2 = String.format(Locale.US, "%06d", Integer.valueOf(intExtra2));
                    aviVar.m.set(true);
                    aviVar.h.nativeSendAuthData(format2, 2);
                    aviVar.n.postDelayed(aviVar.p, 30000L);
                    break;
            }
            abortBroadcast();
        }
    }
}
