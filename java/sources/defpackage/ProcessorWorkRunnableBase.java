package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ProcessorWorkRunnableBase implements Runnable {
    public final WorkSpecSchedulerStub c = new WorkSpecSchedulerStub();

    static final void b(WorkManagerImpl ahxVar, String str) {
        WorkDatabase workDatabase = ahxVar.d;
        WorkSpecDao n = workDatabase.n();
        WorkAuxiliaryDaoImpl u = workDatabase.u();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            int f = n.f(str2);
            if (NavManeuverTypeEnum != 3 && f != 4) {
                n.i(6, str2);
            }
            linkedList.addAll(u.d(str2));
        }
        WorkProcessor ahfVar = ahxVar.f;
        synchronized (ahfVar.g) {
            WorkLogger a = WorkLogger.a();
            String.format("Processor cancelling %s", str);
            a.d(new Throwable[0]);
            ahfVar.f.add(str);
            WorkerWrapper aibVar = (WorkerWrapper) ahfVar.d.remove(str);
            WorkProcessor.e(str, aibVar == null ? (WorkerWrapper) ahfVar.e.remove(str) : aibVar);
            if (aibVar != null) {
                ahfVar.d();
            }
        }
        Iterator it = ahxVar.e.iterator();
        while (it.hasNext()) {
            ((WorkSchedulerInterface) it.next()).b(str);
        }
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
            this.c.a(agv.a);
        } catch (Throwable th) {
            this.c.a(new WorkOperationFailureState(ActivityResultDispatchRunnable));
        }
    }
}
