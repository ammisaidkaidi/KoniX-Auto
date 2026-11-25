package defpackage;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dar implements Executor {
    public static final Logger a = Logger.getLogger(dar.class.getName());
    private final Executor e;
    public final Deque b = new ArrayDeque();
    public int d = 1;
    public long c = 0;
    private final daq f = new daq(this);

    public dar(Executor executor) {
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
            if (i != 4 && i != 3) {
                long j = this.c;
                dap dapVar = new dap(runnable);
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
                            if ((e instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                        }
                        if (this.b.removeLastOccurrence(dapVar)) {
                            z = true;
                            if (e instanceof RejectedExecutionException) {
                            }
                            throw e;
                        }
                        if (e instanceof RejectedExecutionException) {
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
        sb.append("SequentialExecutor@");
        sb.append(identityHashCode);
        sb.append("{");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
