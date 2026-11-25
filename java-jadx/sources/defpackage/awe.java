package defpackage;

import android.bluetooth.BluetoothDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
final class awe implements bdr {
    final /* synthetic */ BluetoothDevice a;
    final /* synthetic */ awh b;

    public awe(awh awhVar, BluetoothDevice bluetoothDevice) {
        this.b = awhVar;
        this.a = bluetoothDevice;
    }

    @Override // defpackage.bdr
    public final void a(int i) {
        ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController$5", "onFailed", 412, "WirelessDiscoveryController.java")).n("Failed to start AP. Not sending WirelessVersionRequest");
    }

    @Override // defpackage.bdr
    public final void b(bdt bdtVar) {
        this.b.b(this.a);
    }

    @Override // defpackage.bdr
    public final /* synthetic */ void c() {
    }
}
