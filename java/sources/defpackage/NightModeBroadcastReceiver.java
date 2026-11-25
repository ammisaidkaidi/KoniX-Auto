package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class NightModeBroadcastReceiver extends BroadcastReceiver {
    final /* synthetic */ NightModeReceiverBase a;

    public NightModeBroadcastReceiver(NightModeReceiverBase jrVar) {
        this.a = jrVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.b();
    }
}
