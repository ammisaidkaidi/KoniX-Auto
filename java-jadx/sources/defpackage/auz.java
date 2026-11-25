package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class auz extends BroadcastReceiver {
    final /* synthetic */ das a;

    public auz(das dasVar) {
        this.a = dasVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
            if (intExtra == 12) {
                this.a.k(null);
            } else if (intExtra == Integer.MIN_VALUE && dik.c()) {
                this.a.l(new IllegalStateException("Failure starting BT adapter"));
            }
        }
    }
}
