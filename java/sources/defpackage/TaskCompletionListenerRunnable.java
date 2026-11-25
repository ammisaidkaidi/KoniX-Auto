package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TaskCompletionListenerRunnable implements Runnable {
    final /* synthetic */ TaskBase a;
    final /* synthetic */ TaskCompletionCallback b;

    public TaskCompletionListenerRunnable(TaskCompletionCallback brbVar, TaskBase brhVar) {
        this.b = brbVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.a) {
            TaskListenerInterface brcVar = this.b.b;
            if (brcVar != null) {
                brcVar.a(this.a);
            }
        }
    }
}
