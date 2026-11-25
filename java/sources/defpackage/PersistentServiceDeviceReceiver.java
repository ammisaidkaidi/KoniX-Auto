package defpackage;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.auto.aareceiver.service.PersistentService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PersistentServiceDeviceReceiver extends BroadcastReceiver {
    final /* synthetic */ PersistentService a;

    public PersistentServiceDeviceReceiver(PersistentService persistentService) {
        this.a = persistentService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (PersistentService.a.equals(intent.getAction())) {
            DeviceTracker bahVar = this.a.e;
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getExtras().get("android.bluetooth.device.extra.DEVICE");
            ProjectionDevice b = bahVar.d.b(bluetoothDevice);
            if (ProtoLiteMessageBase == null) {
                return;
            }
            String a = ClusterAliasNameProvider.a(bluetoothDevice);
            ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) bahVar.f.b(ProtoLiteMessageBase);
            if (bafVar == null) {
                bahVar.d.j(b, a);
            } else {
                bahVar.d.j(bafVar.g, a);
                bahVar.t();
            }
        }
    }
}
