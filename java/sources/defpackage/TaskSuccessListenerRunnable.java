package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TaskSuccessListenerRunnable implements Runnable {
    final /* synthetic */ TaskBase a;
    final /* synthetic */ TaskExecutorImpl b;

    public TaskSuccessListenerRunnable(TaskExecutorImpl breVar, TaskBase brhVar) {
        this.b = breVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.a) {
            TaskCompletionLatch brpVar = this.b.b;
            ThreadAndNullChecksUtil.d(this.a.a());
            brpVar.a.countDown();
        }
    }
}
