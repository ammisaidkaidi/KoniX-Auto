package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
class LazyInjectedBroadcastReceiver extends BroadcastReceiver {
    private volatile boolean a = false;
    private final Object b = new Object();

    protected final void a(Context context) {
        if (this.a) {
            return;
        }
        synchronized (this.b) {
            if (!this.a) {
                ((BluetoothStateReceiverInjector) CommonObjectsAndPreconditionsUtil.q(context)).h((BluetoothStateChangeReceiver) this);
                this.a = true;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a(context);
    }
}
