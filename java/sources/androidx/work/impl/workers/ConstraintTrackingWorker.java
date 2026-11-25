package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import defpackage.WorkLogger;
import defpackage.WorkConstraintsCallback;
import defpackage.GuavaAbstractFuture_ame;
import defpackage.ConstraintTrackingWorkerDelegateRunnable;
import defpackage.ListenableFuture;
import defpackage.GuavaPreconditionsSuppliersUtil;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements WorkConstraintsCallback {
    public static final String f = WorkLogger.b("ConstraintTrkngWrkr");
    public WorkerParameters g;
    public final Object h;
    public volatile boolean i;
    public ListenableWorker j;
    public GuavaAbstractFuture_ame k;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.g = workerParameters;
        this.h = new Object();
        this.i = false;
        this.k = GuavaAbstractFuture_ame.h();
    }

    @Override // androidx.work.ListenableWorker
    public final void aM() {
        ListenableWorker listenableWorker = this.j;
        if (listenableWorker == null || listenableWorker.c) {
            return;
        }
        this.j.aN();
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture b() {
        d().execute(new ConstraintTrackingWorkerDelegateRunnable(this));
        return this.k;
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void e(List list) {
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void f(List list) {
        WorkLogger a = WorkLogger.a();
        String.format("Constraints changed for %s", list);
        a.d(new Throwable[0]);
        synchronized (this.h) {
            this.i = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public final boolean g() {
        ListenableWorker listenableWorker = this.j;
        return listenableWorker != null && listenableWorker.g();
    }

    public final void h() {
        this.k.e(ex.f());
    }

    public final void i() {
        this.k.e(ex.g());
    }
}
