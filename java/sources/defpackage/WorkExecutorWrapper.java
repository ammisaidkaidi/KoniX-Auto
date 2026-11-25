package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkExecutorWrapper implements Executor {
    final /* synthetic */ WorkTaskExecutorHolder a;

    public WorkExecutorWrapper(WorkTaskExecutorHolder amhVar) {
        this.a = amhVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.a.b.post(runnable);
    }
}
