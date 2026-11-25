package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class InterruptibleSettableFuture extends AbstractListenableFutureBase {
    private final ListenableFuture a;

    public InterruptibleSettableFuture(ListenableFuture dagVar) {
        dagVar.getClass();
        this.a = dagVar;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp, defpackage.ListenableFuture
    public final void aW(Runnable runnable, Executor executor) {
        this.a.aW(runnable, executor);
    }

    @Override // defpackage.GuavaAbstractFuture_cyp, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.a.cancel(IcuMessageFormat);
    }

    @Override // defpackage.GuavaAbstractFuture_cyp, java.util.concurrent.Future
    public final Object get() {
        return this.a.get();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a.isCancelled();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp, java.util.concurrent.Future
    public final boolean isDone() {
        return this.a.isDone();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    public final String toString() {
        return this.a.toString();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.a.get(j, timeUnit);
    }
}
