package defpackage;

import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ConstraintTrackerNotifyRunnable implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ ConstraintTrackerBase b;

    public ConstraintTrackerNotifyRunnable(ConstraintTrackerBase ajkVar, List list) {
        this.b = ajkVar;
        this.a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((WorkConstraintStateListener) it.next()).a(this.b.d);
        }
    }
}
