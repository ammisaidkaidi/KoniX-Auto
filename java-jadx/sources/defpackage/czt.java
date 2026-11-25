package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class czt extends cpv implements Future, dag {
    protected czt() {
    }

    protected abstract dag a();

    @Override // defpackage.dag
    public final void aW(Runnable runnable, Executor executor) {
        a().aW(runnable, executor);
    }

    @Override // defpackage.cpv
    protected /* bridge */ /* synthetic */ Object b() {
        throw null;
    }

    protected /* bridge */ /* synthetic */ Future c() {
        throw null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return c().cancel(z);
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
