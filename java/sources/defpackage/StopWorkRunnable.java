package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StopWorkRunnable implements Runnable {
    private final WorkManagerImpl a;
    private final String b;
    private final boolean c;

    static {
        WorkLogger.b("StopWorkRunnable");
    }

    public StopWorkRunnable(WorkManagerImpl ahxVar, String str, boolean z) {
        this.a = ahxVar;
        this.b = str;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean containsKey;
        boolean e;
        WorkManagerImpl ahxVar = this.a;
        WorkDatabase workDatabase = ahxVar.d;
        WorkProcessor ahfVar = ahxVar.f;
        WorkSpecDao n = workDatabase.n();
        workDatabase.f();
        try {
            String str = this.b;
            synchronized (ahfVar.g) {
                containsKey = ahfVar.d.containsKey(str);
            }
            if (this.c) {
                WorkProcessor ahfVar2 = this.a.f;
                String str2 = this.b;
                synchronized (ahfVar2.g) {
                    WorkLogger a = WorkLogger.a();
                    String.format("Processor stopping foreground work %s", str2);
                    a.d(new Throwable[0]);
                    e = WorkProcessor.e(str2, (WorkerWrapper) ahfVar2.d.remove(str2));
                }
                WorkLogger a2 = WorkLogger.a();
                String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.b, Boolean.valueOf(ProtoFlagValueMessage));
                a2.d(new Throwable[0]);
                workDatabase.h();
            }
            if (!containsKey && n.f(this.b) == 2) {
                n.i(1, this.b);
            }
            WorkProcessor ahfVar3 = this.a.f;
            String str3 = this.b;
            synchronized (ahfVar3.g) {
                WorkLogger a3 = WorkLogger.a();
                String.format("Processor stopping background work %s", str3);
                a3.d(new Throwable[0]);
                e = WorkProcessor.e(str3, (WorkerWrapper) ahfVar3.e.remove(str3));
            }
            WorkLogger a22 = WorkLogger.a();
            String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.b, Boolean.valueOf(ProtoFlagValueMessage));
            a22.d(new Throwable[0]);
            workDatabase.h();
        } finally {
            workDatabase.g();
        }
    }
}
