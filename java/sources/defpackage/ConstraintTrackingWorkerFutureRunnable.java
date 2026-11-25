package defpackage;

import androidx.work.impl.workers.ConstraintTrackingWorker;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ConstraintTrackingWorkerFutureRunnable implements Runnable {
    final /* synthetic */ ListenableFuture a;
    final /* synthetic */ ConstraintTrackingWorker b;

    public ConstraintTrackingWorkerFutureRunnable(ConstraintTrackingWorker constraintTrackingWorker, ListenableFuture dagVar) {
        this.b = constraintTrackingWorker;
        this.a = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.h) {
            if (this.b.i) {
                this.b.i();
            } else {
                this.b.k.g(this.a);
            }
        }
    }
}
