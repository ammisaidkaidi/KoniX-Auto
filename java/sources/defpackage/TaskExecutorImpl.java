package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TaskExecutorImpl implements TaskCompletionListenerInterface {
    public final Object a = new Object();
    public final TaskCompletionLatch b;
    private final Executor c;
    private final /* synthetic */ int d;

    public TaskExecutorImpl(Executor executor, TaskCompletionLatch brpVar, int i) {
        this.d = i;
        this.c = executor;
        this.b = brpVar;
    }

    public TaskExecutorImpl(Executor executor, TaskCompletionLatch brpVar, int i, byte[] bArr) {
        this.d = i;
        this.c = executor;
        this.b = brpVar;
    }

    public TaskExecutorImpl(Executor executor, TaskCompletionLatch brpVar, int i, char[] cArr) {
        this.d = i;
        this.c = executor;
        this.b = brpVar;
    }

    @Override // defpackage.TaskCompletionListenerInterface
    public final void a(TaskBase brhVar) {
        switch (this.d) {
            case 0:
                if (brhVar.d() || ((TaskImpl) brhVar).d) {
                    return;
                }
                synchronized (this.a) {
                }
                this.c.execute(new TaskSuccessListenerRunnable(this, brhVar));
                return;
            case 1:
                if (((TaskImpl) brhVar).d) {
                    synchronized (this.a) {
                    }
                    this.c.execute(new TaskExecutorRunnable(this, null));
                    return;
                }
                return;
            default:
                if (brhVar.d()) {
                    synchronized (this.a) {
                    }
                    this.c.execute(new TaskFailureListenerRunnable(this, brhVar, null));
                    return;
                }
                return;
        }
    }
}
