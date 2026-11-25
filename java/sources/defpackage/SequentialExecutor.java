package defpackage;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SequentialExecutor implements Executor {
    public static final Logger a = Logger.getLogger(SequentialExecutor.class.getName());
    private final Executor e;
    public final Deque b = new ArrayDeque();
    public int d = 1;
    public long c = 0;
    private final SequentialExecutorWorker f = new SequentialExecutorWorker(this);

    public SequentialExecutor(Executor executor) {
        executor.getClass();
        this.e = executor;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x005c A[ADDED_TO_REGION] */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.b) {
            int i = this.d;
            if (NavInstructionTypeEnum != 4 && i != 3) {
                long j = this.c;
                RateLimiterSleepingRunnable dapVar = new RateLimiterSleepingRunnable(runnable);
                this.b.add(dapVar);
                this.d = 2;
                try {
                    this.e.execute(this.f);
                    if (this.d != 2) {
                        return;
                    }
                    synchronized (this.b) {
                        if (this.c == j && this.d == 2) {
                            this.d = 3;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.b) {
                        int i2 = this.d;
                        boolean z = false;
                        if (i2 != 1) {
                            if (i2 == 2) {
                            }
                            if ((ProtoFlagValueMessage instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                        }
                        if (this.b.removeLastOccurrence(dapVar)) {
                            z = true;
                            if (ProtoFlagValueMessage instanceof RejectedExecutionException) {
                            }
                            throw e;
                        }
                        if (ProtoFlagValueMessage instanceof RejectedExecutionException) {
                        }
                        throw e;
                    }
                    return;
                }
            }
            this.b.add(runnable);
        }
    }

    public final String toString() {
        int identityHashCode = System.identityHashCode(this);
        String valueOf = String.valueOf(this.e);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        StaggeredGridLayoutParams.append("SequentialExecutor@");
        StaggeredGridLayoutParams.append(identityHashCode);
        StaggeredGridLayoutParams.append("{");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
