package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ImmediateListenableFuture implements ListenableFuture {
    public static final ListenableFuture a = new ImmediateListenableFuture(null);
    private static final Logger b = Logger.getLogger(ImmediateListenableFuture.class.getName());
    private final Object c;

    public ImmediateListenableFuture(Object obj) {
        this.c = obj;
    }

    @Override // defpackage.ListenableFuture
    public final void aW(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = b;
            Level level = Level.SEVERE;
            String obj = runnable.toString();
            String obj2 = executor.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 57 + obj2.length());
            StaggeredGridLayoutParams.append("RuntimeException while executing runnable ");
            StaggeredGridLayoutParams.append(obj);
            StaggeredGridLayoutParams.append(" with executor ");
            StaggeredGridLayoutParams.append(obj2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", StaggeredGridLayoutParams.toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.c;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 27 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("[status=SUCCESS, result=[");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("]]");
        return StaggeredGridLayoutParams.toString();
    }
}
