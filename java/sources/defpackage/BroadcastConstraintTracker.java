package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class BroadcastConstraintTracker extends ConstraintTrackerBase {
    private final BroadcastReceiver f;

    static {
        WorkLogger.b("BrdcstRcvrCnstrntTrckr");
    }

    public BroadcastConstraintTracker(Context context, WorkTaskExecutorHolder amhVar) {
        super(context, amhVar);
        this.f = new ConstraintTrackerBroadcastReceiver(this);
    }

    public abstract IntentFilter a();

    public abstract void c(Intent intent);

    @Override // defpackage.ConstraintTrackerBase
    public final void d() {
        WorkLogger a = WorkLogger.a();
        String.format("%s: registering receiver", getClass().getSimpleName());
        a.d(new Throwable[0]);
        this.a.registerReceiver(this.f, a());
    }

    @Override // defpackage.ConstraintTrackerBase
    public final void e() {
        WorkLogger a = WorkLogger.a();
        String.format("%s: unregistering receiver", getClass().getSimpleName());
        a.d(new Throwable[0]);
        this.a.unregisterReceiver(this.f);
    }
}
