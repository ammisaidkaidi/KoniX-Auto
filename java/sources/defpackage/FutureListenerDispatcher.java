package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureListenerDispatcher {
    private final AtomicReference b = new AtomicReference(dad.a);
    public ExecutorTaskHolder a = new ExecutorTaskHolder();

    private FutureListenerDispatcher() {
    }

    public static FutureListenerDispatcher a() {
        return new FutureListenerDispatcher();
    }

    public final ListenableFuture b(FutureSupplier czbVar, Executor executor) {
        czbVar.getClass();
        executor.getClass();
        final QueuedSerialExecutor czoVar = new QueuedSerialExecutor(executor, this);
        ListeningExecutorServiceWrapper czmVar = new ListeningExecutorServiceWrapper(czoVar, czbVar);
        final SettableFuture e = SettableFuture.e();
        final ListenableFuture dagVar = (ListenableFuture) this.b.getAndSet(ProtoFlagValueMessage);
        final ListenableFutureTask e2 = ListenableFutureTask.e(czmVar);
        dagVar.aW(e2, czoVar);
        final ListenableFuture k = ProjectionIntentHelper.k(e2);
        Runnable runnable = new Runnable() { // from class: czl
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureTask daxVar = ListenableFutureTask.this;
                SettableFuture dasVar = e;
                ListenableFuture dagVar2 = dagVar;
                ListenableFuture dagVar3 = k;
                QueuedSerialExecutor czoVar2 = czoVar;
                if (daxVar.isDone()) {
                    dasVar.d(dagVar2);
                } else if (dagVar3.isCancelled() && czoVar2.compareAndSet(FutureTaskStateEnum.NOT_RUN, FutureTaskStateEnum.CANCELLED)) {
                    daxVar.cancel(false);
                }
            }
        };
        k.aW(runnable, czj.a);
        e2.aW(runnable, czj.a);
        return k;
    }
}
