package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkConnectedConstraintController extends WorkConstraintControllerBase {
    public NetworkConnectedConstraintController(Context context, WorkTaskExecutorHolder amhVar) {
        super(WorkConstraintTrackers.a(context, amhVar).c);
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final boolean b(WorkSpec akkVar) {
        return akkVar.j.i == 2;
    }

    @Override // defpackage.WorkConstraintControllerBase
    public final /* bridge */ /* synthetic */ boolean c(Object obj) {
        WorkNetworkState aitVar = (WorkNetworkState) obj;
        return (aitVar.a && aitVar.b) ? false : true;
    }
}
