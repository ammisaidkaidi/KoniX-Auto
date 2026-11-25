package defpackage;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.auto.aareceiver.service.PersistentService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class baq extends BroadcastReceiver {
    final /* synthetic */ PersistentService a;

    public baq(PersistentService persistentService) {
        this.a = persistentService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (PersistentService.a.equals(intent.getAction())) {
            bah bahVar = this.a.e;
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getExtras().get("android.bluetooth.device.extra.DEVICE");
            awo b = bahVar.d.b(bluetoothDevice);
            if (b == null) {
                return;
            }
            String a = awj.a(bluetoothDevice);
            baf bafVar = (baf) bahVar.f.b(b);
            if (bafVar == null) {
                bahVar.d.j(b, a);
            } else {
                bahVar.d.j(bafVar.g, a);
                bahVar.t();
            }
        }
    }
}
