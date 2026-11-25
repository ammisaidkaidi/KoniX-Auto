package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TaskExecutorPostRunnable implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ HandlerPostingExecutor b;

    public TaskExecutorPostRunnable(HandlerPostingExecutor aelVar, Runnable runnable) {
        this.b = aelVar;
        this.a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.run();
        } finally {
            this.b.a();
        }
    }
}
