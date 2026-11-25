package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HandlerPostingExecutor implements Executor {
    private final Executor a;
    private final ArrayDeque b = new ArrayDeque();
    private Runnable c;

    public HandlerPostingExecutor(Executor executor) {
        this.a = executor;
    }

    final synchronized void a() {
        Runnable runnable = (Runnable) this.b.poll();
        this.c = runnable;
        if (runnable != null) {
            this.a.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(Runnable runnable) {
        this.b.offer(new TaskExecutorPostRunnable(this, runnable));
        if (this.c == null) {
            a();
        }
    }
}
