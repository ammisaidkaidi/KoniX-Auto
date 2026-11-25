package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TransformFutureAsyncCallback extends TransformFutureBase {
    final /* synthetic */ AbstractCatchingFutureImpl a;
    private final Callable c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public TransformFutureAsyncCallback(AbstractCatchingFutureImpl cziVar, Callable callable, Executor executor) {
        super(cziVar, executor);
        this.a = cziVar;
        callable.getClass();
        this.c = callable;
    }

    @Override // defpackage.FutureTaskSyncBase
    public final Object a() {
        return this.c.call();
    }

    @Override // defpackage.FutureTaskSyncBase
    public final String b() {
        return this.c.toString();
    }

    @Override // defpackage.TransformFutureBase
    public final void c(Object obj) {
        this.a.k(obj);
    }
}
