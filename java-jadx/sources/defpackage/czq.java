package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class czq {
    private final AtomicReference b = new AtomicReference(dad.a);
    public czp a = new czp();

    private czq() {
    }

    public static czq a() {
        return new czq();
    }

    public final dag b(czb czbVar, Executor executor) {
        czbVar.getClass();
        executor.getClass();
        final czo czoVar = new czo(executor, this);
        czm czmVar = new czm(czoVar, czbVar);
        final das e = das.e();
        final dag dagVar = (dag) this.b.getAndSet(e);
        final dax e2 = dax.e(czmVar);
        dagVar.aW(e2, czoVar);
        final dag k = hh.k(e2);
        Runnable runnable = new Runnable() { // from class: czl
            @Override // java.lang.Runnable
            public final void run() {
                dax daxVar = dax.this;
                das dasVar = e;
                dag dagVar2 = dagVar;
                dag dagVar3 = k;
                czo czoVar2 = czoVar;
                if (daxVar.isDone()) {
                    dasVar.d(dagVar2);
                } else if (dagVar3.isCancelled() && czoVar2.compareAndSet(czn.NOT_RUN, czn.CANCELLED)) {
                    daxVar.cancel(false);
                }
            }
        };
        k.aW(runnable, czj.a);
        e2.aW(runnable, czj.a);
        return k;
    }
}
