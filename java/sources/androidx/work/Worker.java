package androidx.work;

import android.content.Context;
import defpackage.ListenableWorkerStartRunnable;
import defpackage.GuavaAbstractFuture_ame;
import defpackage.ListenableFuture;
import defpackage.GuavaPreconditionsSuppliersUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    public GuavaAbstractFuture_ame f;

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture b() {
        this.f = GuavaAbstractFuture_ame.h();
        d().execute(new ListenableWorkerStartRunnable(this));
        return this.f;
    }

    public abstract GuavaPreconditionsSuppliersUtil h();
}
