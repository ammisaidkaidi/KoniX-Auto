package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConfigurationSensorFeed extends SensorFeed {
    private final BroadcastReceiver a = new ConfigurationChangeReceiver(this);
    private final Context b;
    private boolean c;

    public ConfigurationSensorFeed(Context context) {
        this.b = context;
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    public final ImmutableSet a() {
        return ImmutableSet.o(SensorType.SENSOR_NIGHT_MODE);
    }

    public final void b(boolean z) {
        int i = 0;
        boolean z2 = (this.b.getResources().getConfiguration().uiMode & 48) == 32;
        if (IcuMessageFormat || this.c != z2) {
            this.c = z2;
            f(SensorType.SENSOR_NIGHT_MODE, new BooleanSensorConsumer(z2, i));
        }
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    public final void c(ImmutableSet cqwVar) {
        this.b.registerReceiver(this.a, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        b(true);
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    protected final void d(ImmutableSet cqwVar) {
        this.b.unregisterReceiver(this.a);
    }
}
