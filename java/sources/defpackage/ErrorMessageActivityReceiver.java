package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.auto.aareceiver.ui.ErrorMessageActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ErrorMessageActivityReceiver extends BroadcastReceiver {
    final /* synthetic */ ErrorMessageActivity a;

    public ErrorMessageActivityReceiver(ErrorMessageActivity errorMessageActivity) {
        this.a = errorMessageActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("com.google.android.embedded.projection.action.FINISH_ERROR_ACTIVITY".equals(intent.getAction())) {
            this.a.finish();
        }
    }
}
