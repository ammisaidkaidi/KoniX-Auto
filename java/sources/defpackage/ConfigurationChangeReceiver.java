package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ConfigurationChangeReceiver extends BroadcastReceiver {
    final /* synthetic */ ConfigurationSensorFeed a;

    public ConfigurationChangeReceiver(ConfigurationSensorFeed azfVar) {
        this.a = azfVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
            this.a.b(false);
        }
    }
}
