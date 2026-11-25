package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureTaskSyncRunnable extends FutureTaskSyncBase {
    final /* synthetic */ ListenableFutureTask a;
    private final Callable b;

    public FutureTaskSyncRunnable(ListenableFutureTask daxVar, Callable callable) {
        this.a = daxVar;
        callable.getClass();
        this.b = callable;
    }

    @Override // defpackage.FutureTaskSyncBase
    public final Object a() {
        return this.b.call();
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
    public final void e(Object obj) {
        this.a.k(obj);
    }

    @Override // defpackage.FutureTaskSyncBase
    public final boolean g() {
        return this.a.isDone();
    }
}
