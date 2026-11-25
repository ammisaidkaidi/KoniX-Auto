package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AbstractFutureWithListeners extends ForwardingObject implements Future, dag {
    protected AbstractFutureWithListeners() {
    }

    protected abstract ListenableFuture a();

    @Override // defpackage.ListenableFuture
    public final void aW(Runnable runnable, Executor executor) {
        a().aW(runnable, executor);
    }

    @Override // defpackage.ForwardingObject
    protected /* bridge */ /* synthetic */ Object b() {
        throw null;
    }

    protected /* bridge */ /* synthetic */ Future c() {
        throw null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return c().cancel(IcuMessageFormat);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return c().get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return c().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return c().isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return c().get(j, timeUnit);
    }
}
