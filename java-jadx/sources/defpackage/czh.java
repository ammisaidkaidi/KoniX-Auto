package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class czh extends daf {
    private final Executor a;
    final /* synthetic */ czi b;

    public czh(czi cziVar, Executor executor) {
        this.b = cziVar;
        executor.getClass();
        this.a = executor;
    }

    public abstract void c(Object obj);

    @Override // defpackage.daf
    public final void d(Throwable th) {
        this.b.c = null;
        if (th instanceof ExecutionException) {
            this.b.l(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.b.cancel(false);
        } else {
            this.b.l(th);
        }
    }

    @Override // defpackage.daf
    public final void e(Object obj) {
        this.b.c = null;
        c(obj);
    }

    final void f() {
        try {
            this.a.execute(this);
        } catch (RejectedExecutionException e) {
            this.b.l(e);
        }
    }

    @Override // defpackage.daf
    public final boolean g() {
        return this.b.isDone();
    }
}
