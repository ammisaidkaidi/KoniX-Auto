package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureTaskSyncCallable extends FutureTaskSyncBase {
    final /* synthetic */ ListenableFutureTask a;
    private final FutureSupplier b;

    public FutureTaskSyncCallable(ListenableFutureTask daxVar, FutureSupplier czbVar) {
        this.a = daxVar;
        czbVar.getClass();
        this.b = czbVar;
    }

    @Override // defpackage.FutureTaskSyncBase
    public final /* bridge */ /* synthetic */ Object a() {
        ListenableFuture a = this.b.a();
        a.getClass();
        return a;
    }

    @Override // defpackage.FutureTaskSyncBase
    public final String b() {
        return this.b.toString();
    }

    @Override // defpackage.FutureTaskSyncBase
    public final void d(Throwable th) {
        this.a.l(ActivityResultDispatchRunnable);
    }

    @Override // defpackage.FutureTaskSyncBase
    public final /* bridge */ /* synthetic */ void e(Object obj) {
        this.a.d((ListenableFuture) obj);
    }

    @Override // defpackage.FutureTaskSyncBase
    public final boolean g() {
        return this.a.isDone();
    }
}
