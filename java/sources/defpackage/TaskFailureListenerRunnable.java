package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TaskFailureListenerRunnable implements Runnable {
    final /* synthetic */ TaskBase a;
    final /* synthetic */ TaskExecutorImpl b;

    public TaskFailureListenerRunnable(TaskExecutorImpl breVar, TaskBase brhVar, byte[] bArr) {
        this.b = breVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.a) {
            TaskCompletionLatch brpVar = this.b.b;
            this.a.b();
            brpVar.a.countDown();
        }
    }
}
