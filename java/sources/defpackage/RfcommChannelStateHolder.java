package defpackage;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothServerSocket;
import android.content.Context;
import android.content.IntentFilter;
import android.os.UserManager;
import java.util.UUID;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RfcommChannelStateHolder implements RfcommChannelCallback {
    static final UUID a = UUID.fromString("4de17a00-52cb-11e6-bdf4-0800200c9a66");
    private final BluetoothAdapter b;
    private final UserManager c;
    private final TelemetryTracker d;
    private final Lock e;
    private final Condition f;
    private boolean g;

    public RfcommChannelStateHolder(Context context, BluetoothAdapter bluetoothAdapter, UserManager userManager, TelemetryTracker bdeVar) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.e = reentrantLock;
        this.f = reentrantLock.newCondition();
        this.g = false;
        this.b = bluetoothAdapter;
        this.c = userManager;
        this.d = bdeVar;
        context.registerReceiver(new RfcommServerStateReceiver(this), new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
        b();
    }

    @Override // defpackage.RfcommChannelCallback
    public final BluetoothServerSocket a() {
        this.e.lock();
        while (!this.g) {
            try {
                this.f.await();
            } catch (Throwable th) {
                this.e.unlock();
                throw th;
            }
        }
        this.e.unlock();
        this.d.c();
        return this.b.listenUsingRfcommWithServiceRecord("Android Auto Bluetooth RFCOMM", a);
    }

    public final void b() {
        BluetoothAdapter bluetoothAdapter;
        boolean z = false;
        if (this.c.isUserUnlocked() && (bluetoothAdapter = this.b) != null && bluetoothAdapter.isEnabled()) {
            z = true;
        }
        if (this.g == z) {
            return;
        }
        this.e.lock();
        try {
            this.g = z;
            this.f.signal();
        } finally {
            this.e.unlock();
        }
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        boolean z = this.g;
        boolean z2 = this.b == null;
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 40);
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append("{ enabled: ");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", adapter==null: ");
        StaggeredGridLayoutParams.append(z2);
        StaggeredGridLayoutParams.append(" }");
        return StaggeredGridLayoutParams.toString();
    }
}
