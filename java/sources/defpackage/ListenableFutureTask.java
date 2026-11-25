package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ListenableFutureTask extends ListeningExecutorServiceBase implements RunnableFuture {
    private volatile FutureTaskSyncBase a;

    public ListenableFutureTask(FutureSupplier czbVar) {
        this.a = new FutureTaskSyncCallable(this, czbVar);
    }

    public static ListenableFutureTask e(FutureSupplier czbVar) {
        return new ListenableFutureTask(czbVar);
    }

    static ListenableFutureTask n(Callable callable) {
        return new ListenableFutureTask(callable);
    }

    public static ListenableFutureTask o(Runnable runnable, Object obj) {
        return new ListenableFutureTask(Executors.callable(runnable, obj));
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        FutureTaskSyncBase dafVar = this.a;
        if (dafVar == null) {
            return super.a();
        }
        String obj = dafVar.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 7);
        StaggeredGridLayoutParams.append("task=[");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void c() {
        FutureTaskSyncBase dafVar;
        if (m() && (dafVar = this.a) != null) {
            dafVar.h();
        }
        this.a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        FutureTaskSyncBase dafVar = this.a;
        if (dafVar != null) {
            dafVar.run();
        }
        this.a = null;
    }

    public ListenableFutureTask(Callable callable) {
        this.a = new FutureTaskSyncRunnable(this, callable);
    }
}
