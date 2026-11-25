package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkExecutionTimerRunnable implements Runnable {
    private final WorkExecutionTimer a;
    private final String b;

    public WorkExecutionTimerRunnable(WorkExecutionTimer aluVar, String str) {
        this.a = aluVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.a.d) {
            if (((WorkExecutionTimerRunnable) this.a.b.remove(this.b)) != null) {
                WorkExecutionTimeoutListener alsVar = (WorkExecutionTimeoutListener) this.a.c.remove(this.b);
                if (alsVar != null) {
                    alsVar.b(this.b);
                }
            } else {
                WorkLogger a = WorkLogger.a();
                String.format("Timer with %s is already marked as complete.", this.b);
                a.d(new Throwable[0]);
            }
        }
    }
}
