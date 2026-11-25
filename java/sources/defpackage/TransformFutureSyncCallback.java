package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TransformFutureSyncCallback extends TransformFutureBase {
    final /* synthetic */ AbstractCatchingFutureImpl a;
    private final FutureSupplier c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public TransformFutureSyncCallback(AbstractCatchingFutureImpl cziVar, FutureSupplier czbVar, Executor executor) {
        super(cziVar, executor);
        this.a = cziVar;
        czbVar.getClass();
        this.c = czbVar;
    }

    @Override // defpackage.FutureTaskSyncBase
    public final /* bridge */ /* synthetic */ Object a() {
        ListenableFuture a = this.c.a();
        a.getClass();
        return a;
    }

    @Override // defpackage.FutureTaskSyncBase
    public final String b() {
        return this.c.toString();
    }

    @Override // defpackage.TransformFutureBase
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        this.a.d((ListenableFuture) obj);
    }
}
