package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkerWrapperLaunchRunnable implements Runnable {
    final /* synthetic */ ListenableFuture a;
    final /* synthetic */ WorkerWrapper b;
    final /* synthetic */ GuavaAbstractFuture_ame c;

    public WorkerWrapperLaunchRunnable(WorkerWrapper aibVar, ListenableFuture dagVar, GuavaAbstractFuture_ame ameVar) {
        this.b = aibVar;
        this.a = dagVar;
        this.c = ameVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.get();
            WorkLogger a = WorkLogger.a();
            int i = aib.j;
            String.format("Starting work for %s", this.b.c.c);
            a.d(new Throwable[0]);
            WorkerWrapper aibVar = this.b;
            aibVar.e = aibVar.d.b();
            this.c.g(this.b.e);
        } catch (Throwable th) {
            this.c.f(ActivityResultDispatchRunnable);
        }
    }
}
