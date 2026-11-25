package defpackage;

import android.content.Context;
import android.os.Build;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StorageNotLowConstraintController extends WorkConstraintControllerBase {
    public StorageNotLowConstraintController(Context context, WorkTaskExecutorHolder amhVar) {
        super(WorkConstraintTrackers.a(context, amhVar).c);
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final boolean b(WorkSpec akkVar) {
        return akkVar.j.i == 3 || (Build.VERSION.SDK_INT >= 30 && akkVar.j.i == 6);
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final /* bridge */ /* synthetic */ boolean c(Object obj) {
        WorkNetworkState aitVar = (WorkNetworkState) obj;
        return !aitVar.a || aitVar.c;
    }
}
