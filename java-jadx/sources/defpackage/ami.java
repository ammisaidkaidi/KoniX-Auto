package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Collections;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ami implements Runnable {
    final /* synthetic */ ConstraintTrackingWorker a;

    public ami(ConstraintTrackingWorker constraintTrackingWorker) {
        this.a = constraintTrackingWorker;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConstraintTrackingWorker constraintTrackingWorker = this.a;
        Object obj = constraintTrackingWorker.a().b.get("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        String str = obj instanceof String ? (String) obj : null;
        if (TextUtils.isEmpty(str)) {
            agr.a();
            agr.e(ConstraintTrackingWorker.f, "No worker to delegate to.", new Throwable[0]);
            constraintTrackingWorker.h();
            return;
        }
        constraintTrackingWorker.j = constraintTrackingWorker.b.d.a(constraintTrackingWorker.a, str, constraintTrackingWorker.g);
        if (constraintTrackingWorker.j == null) {
            agr.a().d(new Throwable[0]);
            constraintTrackingWorker.h();
            return;
        }
        akk a = ahx.c(constraintTrackingWorker.a).d.n().a(constraintTrackingWorker.c().toString());
        if (a == null) {
            constraintTrackingWorker.h();
            return;
        }
        Context context = constraintTrackingWorker.a;
        aiv aivVar = new aiv(context, ahx.c(context).i, constraintTrackingWorker);
        aivVar.a(Collections.singletonList(a));
        if (!aivVar.c(constraintTrackingWorker.c().toString())) {
            agr a2 = agr.a();
            String.format("Constraints not met for delegate %s. Requesting retry.", str);
            a2.d(new Throwable[0]);
            constraintTrackingWorker.i();
            return;
        }
        agr a3 = agr.a();
        String.format("Constraints met for delegate %s", str);
        a3.d(new Throwable[0]);
        try {
            dag b = constraintTrackingWorker.j.b();
            b.aW(new amj(constraintTrackingWorker, b), constraintTrackingWorker.d());
        } catch (Throwable th) {
            agr a4 = agr.a();
            String.format("Delegated worker %s threw exception in startWork.", str);
            a4.d(th);
            synchronized (constraintTrackingWorker.h) {
                if (constraintTrackingWorker.i) {
                    agr.a().d(new Throwable[0]);
                    constraintTrackingWorker.i();
                } else {
                    constraintTrackingWorker.h();
                }
            }
        }
    }
}
