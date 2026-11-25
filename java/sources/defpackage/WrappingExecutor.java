package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WrappingExecutor implements Executor {
    final /* synthetic */ Executor a;
    final /* synthetic */ GuavaAbstractFuture_cyp b;

    public WrappingExecutor(Executor executor, GuavaAbstractFuture_cyp cypVar) {
        this.a = executor;
        this.b = cypVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.a.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.b.l(ProtoFlagValueMessage);
        }
    }
}
