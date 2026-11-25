package defpackage;

import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AlarmCommandDequeueRunnable implements Runnable {
    private final SystemAlarmScheduler a;

    public AlarmCommandDequeueRunnable(SystemAlarmScheduler aipVar) {
        this.a = aipVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        SystemAlarmScheduler aipVar = this.a;
        WorkLogger.a().d(new Throwable[0]);
        aipVar.b();
        synchronized (aipVar.g) {
            if (aipVar.h != null) {
                WorkLogger a = WorkLogger.a();
                String.format("Removing command %s", aipVar.h);
                a.d(new Throwable[0]);
                if (!((Intent) aipVar.g.remove(0)).equals(aipVar.h)) {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
                aipVar.h = null;
            }
            SerialTaskExecutor_alh alhVar = aipVar.j.a;
            SystemAlarmExecutionListener aigVar = aipVar.f;
            synchronized (aigVar.d) {
                z = !aigVar.c.isEmpty();
            }
            if (!z && aipVar.g.isEmpty()) {
                synchronized (alhVar.b) {
                    z2 = !alhVar.a.isEmpty();
                }
                if (!z2) {
                    WorkLogger.a().d(new Throwable[0]);
                    SimpleCompletionCallback ainVar = aipVar.i;
                    if (ainVar != null) {
                        ainVar.a();
                    }
                }
            }
            if (!aipVar.g.isEmpty()) {
                aipVar.e();
            }
        }
    }
}
