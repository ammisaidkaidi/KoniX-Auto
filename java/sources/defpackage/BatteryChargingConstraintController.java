package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryChargingConstraintController extends WorkConstraintControllerBase {
    public BatteryChargingConstraintController(Context context, WorkTaskExecutorHolder amhVar) {
        super(WorkConstraintTrackers.a(context, amhVar).a);
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final boolean b(WorkSpec akkVar) {
        return akkVar.j.b;
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final /* bridge */ /* synthetic */ boolean c(Object obj) {
        return !((Boolean) obj).booleanValue();
    }
}
