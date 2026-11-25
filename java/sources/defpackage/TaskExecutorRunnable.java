package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TaskExecutorRunnable implements Runnable {
    final /* synthetic */ TaskExecutorImpl a;

    public TaskExecutorRunnable(TaskExecutorImpl breVar, byte[] bArr) {
        this.a = breVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.a.a) {
            this.a.b.a.countDown();
        }
    }
}
