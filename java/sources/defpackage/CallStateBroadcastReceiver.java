package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CallStateBroadcastReceiver extends BroadcastReceiver {
    final /* synthetic */ CallAvailabilityMonitor a;

    public CallStateBroadcastReceiver(CallAvailabilityMonitor bcuVar) {
        this.a = bcuVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("state");
        if (stringExtra == null) {
            stringExtra = TelephonyManager.EXTRA_STATE_IDLE;
        }
        this.a.c.nativeSetCallAvailability(TelephonyManager.EXTRA_STATE_IDLE.equals(stringExtra));
    }
}
