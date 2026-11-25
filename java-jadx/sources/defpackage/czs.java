package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class czs extends dab {
    private final dag a;

    public czs(dag dagVar) {
        dagVar.getClass();
        this.a = dagVar;
    }

    @Override // defpackage.cyp, defpackage.dag
    public final void aW(Runnable runnable, Executor executor) {
        this.a.aW(runnable, executor);
    }

    @Override // defpackage.cyp, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.a.cancel(z);
    }

    @Override // defpackage.cyp, java.util.concurrent.Future
    public final Object get() {
        return this.a.get();
    }

    @Override // defpackage.cyp, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a.isCancelled();
    }

    @Override // defpackage.cyp, java.util.concurrent.Future
    public final boolean isDone() {
        return this.a.isDone();
    }

    @Override // defpackage.cyp
    public final String toString() {
        return this.a.toString();
    }

    @Override // defpackage.cyp, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.a.get(j, timeUnit);
    }
}
