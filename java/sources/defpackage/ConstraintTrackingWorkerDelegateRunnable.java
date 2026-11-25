package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Collections;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConstraintTrackingWorkerDelegateRunnable implements Runnable {
    final /* synthetic */ ConstraintTrackingWorker a;

    public ConstraintTrackingWorkerDelegateRunnable(ConstraintTrackingWorker constraintTrackingWorker) {
        this.a = constraintTrackingWorker;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConstraintTrackingWorker constraintTrackingWorker = this.a;
        Object obj = constraintTrackingWorker.a().b.get("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        String str = obj instanceof String ? (String) obj : null;
        if (TextUtils.isEmpty(str)) {
            WorkLogger.a();
            WorkLogger.e(ConstraintTrackingWorker.f, "No worker to delegate to.", new Throwable[0]);
            constraintTrackingWorker.h();
            return;
        }
        constraintTrackingWorker.j = constraintTrackingWorker.b.d.a(constraintTrackingWorker.a, str, constraintTrackingWorker.g);
        if (constraintTrackingWorker.j == null) {
            WorkLogger.a().d(new Throwable[0]);
            constraintTrackingWorker.h();
            return;
        }
        WorkSpec a = WorkManagerImpl.c(constraintTrackingWorker.a).d.n().a(constraintTrackingWorker.c().toString());
        if (SingleStringProtoMessage == null) {
            constraintTrackingWorker.h();
            return;
        }
        Context context = constraintTrackingWorker.a;
        WorkConstraintsTracker aivVar = new WorkConstraintsTracker(context, WorkManagerImpl.c(context).i, constraintTrackingWorker);
        aivVar.a(Collections.singletonList(SingleStringProtoMessage));
        if (!aivVar.c(constraintTrackingWorker.c().toString())) {
            WorkLogger a2 = WorkLogger.a();
            String.format("Constraints not met for delegate %s. Requesting retry.", str);
            a2.d(new Throwable[0]);
            constraintTrackingWorker.i();
            return;
        }
        WorkLogger a3 = WorkLogger.a();
        String.format("Constraints met for delegate %s", str);
        a3.d(new Throwable[0]);
        try {
            ListenableFuture b = constraintTrackingWorker.j.b();
            b.aW(new ConstraintTrackingWorkerFutureRunnable(constraintTrackingWorker, b), constraintTrackingWorker.d());
        } catch (Throwable th) {
            WorkLogger a4 = WorkLogger.a();
            String.format("Delegated worker %s threw exception in startWork.", str);
            a4.d(ActivityResultDispatchRunnable);
            synchronized (constraintTrackingWorker.h) {
                if (constraintTrackingWorker.i) {
                    WorkLogger.a().d(new Throwable[0]);
                    constraintTrackingWorker.i();
                } else {
                    constraintTrackingWorker.h();
                }
            }
        }
    }
}
