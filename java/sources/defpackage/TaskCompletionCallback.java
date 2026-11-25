package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TaskCompletionCallback implements TaskCompletionListenerInterface {
    public final Object a = new Object();
    public final TaskListenerInterface b;
    private final Executor c;

    public TaskCompletionCallback(Executor executor, TaskListenerInterface brcVar) {
        this.c = executor;
        this.b = brcVar;
    }

    @Override // defpackage.TaskCompletionListenerInterface
    public final void a(TaskBase brhVar) {
        synchronized (this.a) {
            if (this.b == null) {
                return;
            }
            this.c.execute(new TaskCompletionListenerRunnable(this, brhVar));
        }
    }
}
