package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryNotLowConstraintController extends WorkConstraintControllerBase {
    public BatteryNotLowConstraintController(Context context, WorkTaskExecutorHolder amhVar) {
        super(WorkConstraintTrackers.a(context, amhVar).b);
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final boolean b(WorkSpec akkVar) {
        return akkVar.j.d;
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final /* bridge */ /* synthetic */ boolean c(Object obj) {
        return !((Boolean) obj).booleanValue();
    }
}
