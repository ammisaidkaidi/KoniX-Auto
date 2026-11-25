package defpackage;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class NightModeReceiverBase {
    private BroadcastReceiver a;
    final /* synthetic */ AppCompatDelegateImpl c;

    public NightModeReceiverBase(AppCompatDelegateImpl jwVar) {
        this.c = jwVar;
    }

    public abstract IntentFilter a();

    public abstract void b();

    final void c() {
        BroadcastReceiver broadcastReceiver = this.a;
        if (broadcastReceiver != null) {
            try {
                this.c.f.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e) {
            }
            this.a = null;
        }
    }

    final void d() {
        c();
        IntentFilter a = a();
        if (a.countActions() == 0) {
            return;
        }
        if (this.a == null) {
            this.a = new NightModeBroadcastReceiver(this);
        }
        this.c.f.registerReceiver(this.a, a);
    }
}
