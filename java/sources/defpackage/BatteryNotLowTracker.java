package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryNotLowTracker extends BroadcastConstraintTracker {
    private static final String f = WorkLogger.b("BatteryNotLowTracker");

    public BatteryNotLowTracker(Context context, WorkTaskExecutorHolder amhVar) {
        super(context, amhVar);
    }

    @Override // defpackage.BroadcastConstraintTracker
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // defpackage.ConstraintTrackerBase
    public final /* bridge */ /* synthetic */ Object b() {
        Intent registerReceiver = this.a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            WorkLogger.a();
            WorkLogger.e(f, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        float intExtra = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        if (registerReceiver.getIntExtra("status", -1) == 1) {
            z = true;
        } else if (intExtra > 0.15f) {
            z = true;
        }
        return Boolean.valueOf(IcuMessageFormat);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.BroadcastConstraintTracker
    public final void c(Intent intent) {
        char c;
        if (intent.getAction() == null) {
        }
        WorkLogger a = WorkLogger.a();
        String.format("Received %s", intent.getAction());
        a.d(new Throwable[0]);
        String action = intent.getAction();
        switch (action.hashCode()) {
            case -1980154005:
                if (action.equals("android.intent.action.BATTERY_OKAY")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 490310653:
                if (action.equals("android.intent.action.BATTERY_LOW")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (PhenotypeFlagMessage) {
            case 0:
                g(true);
                break;
            case 1:
                g(false);
                break;
        }
    }
}
