package defpackage;

import android.bluetooth.BluetoothDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class avh implements czv {
    final /* synthetic */ boolean a;
    final /* synthetic */ BluetoothDevice b;
    final /* synthetic */ avi c;

    public avh(avi aviVar, boolean z, BluetoothDevice bluetoothDevice) {
        this.c = aviVar;
        this.a = z;
        this.b = bluetoothDevice;
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        ((csx) ((csx) avi.a.b().g(th)).h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$4", "onFailure", 288, "BluetoothPeerManager.java")).n("Could not enable Bluetooth adapter");
        if (dik.c()) {
            synchronized (this.c.i) {
                this.c.k = null;
            }
        }
    }

    @Override // defpackage.czv
    public final void b(Object obj) {
        synchronized (this.c.i) {
            this.c.k = null;
            if (this.a) {
                this.c.b();
            }
        }
        this.c.f.a(hh.t(dik.a.a().a()));
        this.c.h.nativeOnReadyForPairing(this.b.getBondState() == 12);
    }
}
