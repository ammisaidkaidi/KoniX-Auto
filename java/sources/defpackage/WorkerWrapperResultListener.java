package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkerWrapperResultListener implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ WorkerWrapper b;
    final /* synthetic */ GuavaAbstractFuture_ame c;

    public WorkerWrapperResultListener(WorkerWrapper aibVar, GuavaAbstractFuture_ame ameVar, String str) {
        this.b = aibVar;
        this.c = ameVar;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WorkerWrapper aibVar;
        try {
            try {
                GuavaPreconditionsSuppliersUtil exVar = (GuavaPreconditionsSuppliersUtil) this.c.get();
                if (exVar == null) {
                    WorkLogger.a();
                    WorkLogger.e(aib.a, String.format("%s returned a null result. Treating it as a failure.", this.b.c.c), new Throwable[0]);
                } else {
                    WorkLogger a = WorkLogger.a();
                    int i = aib.j;
                    String.format("%s returned a %s result.", this.b.c.c, exVar);
                    a.d(new Throwable[0]);
                    this.b.i = exVar;
                }
                aibVar = this.b;
            } catch (InterruptedException e) {
                e = e;
                WorkLogger.a();
                WorkLogger.e(aib.a, String.format("%s failed because it threw an exception/error", this.a), e);
                aibVar = this.b;
            } catch (CancellationException e2) {
                WorkLogger.a();
                int i2 = aib.j;
                String.format("%s was cancelled", this.a);
                WorkLogger.f(e2);
                aibVar = this.b;
            } catch (ExecutionException e3) {
                e = e3;
                WorkLogger.a();
                WorkLogger.e(aib.a, String.format("%s failed because it threw an exception/error", this.a), e);
                aibVar = this.b;
            }
            aibVar.a();
        } catch (Throwable th) {
            this.b.a();
            throw th;
        }
    }
}
