package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListeningExecutorServiceWrapper implements FutureSupplier {
    final /* synthetic */ QueuedSerialExecutor a;
    final /* synthetic */ FutureSupplier b;

    public ListeningExecutorServiceWrapper(QueuedSerialExecutor czoVar, FutureSupplier czbVar) {
        this.a = czoVar;
        this.b = czbVar;
    }

    @Override // defpackage.FutureSupplier
    public final ListenableFuture a() {
        return !this.a.compareAndSet(FutureTaskStateEnum.NOT_RUN, FutureTaskStateEnum.STARTED) ? ProjectionIntentHelper.h() : this.b.a();
    }

    public final String toString() {
        return this.b.toString();
    }
}
