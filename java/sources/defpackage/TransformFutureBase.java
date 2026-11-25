package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class TransformFutureBase extends FutureTaskSyncBase {
    private final Executor a;
    final /* synthetic */ AbstractCatchingFutureImpl b;

    public TransformFutureBase(AbstractCatchingFutureImpl cziVar, Executor executor) {
        this.b = cziVar;
        executor.getClass();
        this.a = executor;
    }

    public abstract void c(Object obj);

    @Override // defpackage.FutureTaskSyncBase
    public final void d(Throwable th) {
        this.b.c = null;
        if (ActivityResultDispatchRunnable instanceof ExecutionException) {
            this.b.l(((ExecutionException) th).getCause());
        } else if (ActivityResultDispatchRunnable instanceof CancellationException) {
            this.b.cancel(false);
        } else {
            this.b.l(ActivityResultDispatchRunnable);
        }
    }

    @Override // defpackage.FutureTaskSyncBase
    public final void e(Object obj) {
        this.b.c = null;
        c(obj);
    }

    final void f() {
        try {
            this.a.execute(this);
        } catch (RejectedExecutionException e) {
            this.b.l(ProtoFlagValueMessage);
        }
    }

    @Override // defpackage.FutureTaskSyncBase
    public final boolean g() {
        return this.b.isDone();
    }
}
