package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkConstraintTrackers {
    private static WorkConstraintTrackers e;
    public final BatteryChargingTracker a;
    public final BatteryNotLowTracker b;
    public final NetworkStateTracker c;
    public final StorageNotLowTracker d;

    private WorkConstraintTrackers(Context context, WorkTaskExecutorHolder amhVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = new BatteryChargingTracker(applicationContext, amhVar);
        this.b = new BatteryNotLowTracker(applicationContext, amhVar);
        this.c = new NetworkStateTracker(applicationContext, amhVar);
        this.d = new StorageNotLowTracker(applicationContext, amhVar);
    }

    public static synchronized WorkConstraintTrackers a(Context context, WorkTaskExecutorHolder amhVar) {
        WorkConstraintTrackers ajoVar;
        synchronized (WorkConstraintTrackers.class) {
            if (ProtoFlagValueMessage == null) {
                e = new WorkConstraintTrackers(context, amhVar);
            }
            ajoVar = e;
        }
        return ajoVar;
    }
}
