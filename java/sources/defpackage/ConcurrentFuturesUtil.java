package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConcurrentFuturesUtil {
    private final boolean a;
    private final ImmutableList b;

    public ConcurrentFuturesUtil(boolean z, ImmutableList cqhVar) {
        this.a = z;
        this.b = cqhVar;
    }

    public final ListenableFuture a(Callable callable, Executor executor) {
        return new AbstractCatchingFutureImpl(this.b, this.a, executor, callable);
    }

    public final ListenableFuture b(FutureSupplier czbVar, Executor executor) {
        return new AbstractCatchingFutureImpl(this.b, this.a, executor, czbVar);
    }
}
