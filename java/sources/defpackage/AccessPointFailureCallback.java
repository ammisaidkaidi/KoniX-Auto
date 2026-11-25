package defpackage;

import android.bluetooth.BluetoothDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointFailureCallback implements AccessPointStateListener {
    final /* synthetic */ BluetoothDevice a;
    final /* synthetic */ WirelessDiscoveryController b;

    public AccessPointFailureCallback(WirelessDiscoveryController awhVar, BluetoothDevice bluetoothDevice) {
        this.b = awhVar;
        this.a = bluetoothDevice;
    }

    @Override // defpackage.AccessPointStateListener
    public final void a(int i) {
        ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$5", "onFailed", 412, "WirelessDiscoveryController.java")).n("Failed to start AP. Not sending WirelessVersionRequest");
    }

    @Override // defpackage.AccessPointStateListener
    public final void b(ApConfiguration bdtVar) {
        this.b.b(this.a);
    }

    @Override // defpackage.AccessPointStateListener
    public final /* synthetic */ void c() {
    }
}
