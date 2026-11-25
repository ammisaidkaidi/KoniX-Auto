package defpackage;

import android.bluetooth.BluetoothDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothPeerManagerFutureCallback implements ListenableFutureCallback {
    final /* synthetic */ boolean a;
    final /* synthetic */ BluetoothDevice b;
    final /* synthetic */ BluetoothPeerManager c;

    public BluetoothPeerManagerFutureCallback(BluetoothPeerManager aviVar, boolean z, BluetoothDevice bluetoothDevice) {
        this.c = aviVar;
        this.a = z;
        this.b = bluetoothDevice;
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) BluetoothPeerManager.a.b().g(ActivityResultDispatchRunnable)).h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager$4", "onFailure", 288, "BluetoothPeerManager.java")).n("Could not enable Bluetooth adapter");
        if (AaReceiverFlags45355406Facade.c()) {
            synchronized (this.c.i) {
                this.c.k = null;
            }
        }
    }

    @Override // defpackage.ListenableFutureCallback
    public final void b(Object obj) {
        synchronized (this.c.i) {
            this.c.k = null;
            if (this.a) {
                this.c.b();
            }
        }
        this.c.f.a(ProjectionIntentHelper.t(AaReceiverFlags45355406Facade.a.a().a()));
        this.c.h.nativeOnReadyForPairing(this.b.getBondState() == 12);
    }
}
