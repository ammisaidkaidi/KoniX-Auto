package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ScheduleWorkSpecRunnable implements Runnable {
    final /* synthetic */ WorkSpec a;
    final /* synthetic */ DelayedWorkTracker b;

    public ScheduleWorkSpecRunnable(DelayedWorkTracker aidVar, WorkSpec akkVar) {
        this.b = aidVar;
        this.a = akkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WorkLogger a = WorkLogger.a();
        int i = aid.d;
        String.format("Scheduling work %s", this.a.b);
        a.d(new Throwable[0]);
        this.b.a.c(this.a);
    }
}
