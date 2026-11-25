package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ConstraintTrackerBroadcastReceiver extends BroadcastReceiver {
    final /* synthetic */ BroadcastConstraintTracker a;

    public ConstraintTrackerBroadcastReceiver(BroadcastConstraintTracker ajiVar) {
        this.a = ajiVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            this.a.c(intent);
        }
    }
}
