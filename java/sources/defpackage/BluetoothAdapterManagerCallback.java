package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothAdapterManagerCallback implements ListenableFutureCallback {
    final /* synthetic */ BluetoothAdapterManager a;

    public BluetoothAdapterManagerCallback(BluetoothAdapterManager avbVar) {
        this.a = avbVar;
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        this.a.d.b(LatencyEventType.BT_ADAPTER_STARTUP, 5);
    }

    @Override // defpackage.ListenableFutureCallback
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        this.a.d.b(LatencyEventType.BT_ADAPTER_STARTUP, 3);
    }
}
