package defpackage;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkProcessor implements WorkExecutionListener, ajp {
    public static final String a = WorkLogger.b("Processor");
    public final Context c;
    private final WorkTaskExecutor h;
    private final WorkDatabase i;
    private final List j;
    private final WorkTaskExecutorHolder l;
    public final Map e = new HashMap();
    public final Map d = new HashMap();
    public final Set f = new HashSet();
    private final List k = new ArrayList();
    public PowerManager.WakeLock b = null;
    public final Object g = new Object();

    public WorkProcessor(Context context, WorkTaskExecutor agfVar, WorkTaskExecutorHolder amhVar, WorkDatabase workDatabase, List list) {
        this.c = context;
        this.h = agfVar;
        this.l = amhVar;
        this.i = workDatabase;
        this.j = list;
    }

    public static boolean e(String str, WorkerWrapper aibVar) {
        boolean z;
        if (aibVar == null) {
            WorkLogger a2 = WorkLogger.a();
            String.format("WorkerWrapper could not be found for %s", str);
            a2.d(new Throwable[0]);
            return false;
        }
        aibVar.f = true;
        aibVar.c();
        ListenableFuture dagVar = aibVar.e;
        if (dagVar != null) {
            z = dagVar.isDone();
            aibVar.e.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = aibVar.d;
        if (listenableWorker == null || z) {
            String.format("WorkSpec %s is already done. Not interrupting.", aibVar.c);
            WorkLogger.a().d(new Throwable[0]);
        } else {
            listenableWorker.aN();
        }
        WorkLogger a3 = WorkLogger.a();
        String.format("WorkerWrapper interrupted for %s", str);
        a3.d(new Throwable[0]);
        return true;
    }

    @Override // defpackage.WorkExecutionListener
    public final void a(String str, boolean z) {
        synchronized (this.g) {
            this.e.remove(str);
            WorkLogger a2 = WorkLogger.a();
            String.format("%s %IcuMessageArgTypeHolder executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(IcuMessageFormat));
            a2.d(new Throwable[0]);
            Iterator it = this.k.iterator();
            while (it.hasNext()) {
                ((WorkExecutionListener) it.next()).a(str, z);
            }
        }
    }

    public final void b(WorkExecutionListener ahcVar) {
        synchronized (this.g) {
            this.k.add(ahcVar);
        }
    }

    public final void c(WorkExecutionListener ahcVar) {
        synchronized (this.g) {
            this.k.remove(ahcVar);
        }
    }

    public final void d() {
        synchronized (this.g) {
            if (this.d.isEmpty()) {
                try {
                    this.c.startService(SystemForegroundDispatcher.d(this.c));
                } catch (Throwable th) {
                    WorkLogger.a();
                    WorkLogger.e(a, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.b;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.b = null;
                }
            }
        }
    }

    public final boolean f(String str) {
        boolean z;
        synchronized (this.g) {
            z = true;
            if (!this.e.containsKey(str) && !this.d.containsKey(str)) {
                z = false;
            }
        }
        return z;
    }

    public final boolean g(String str) {
        synchronized (this.g) {
            if (f(str)) {
                WorkLogger a2 = WorkLogger.a();
                String.format("Work %s is already enqueued for processing", str);
                a2.d(new Throwable[0]);
                return false;
            }
            WorkerWrapperBuilder aiaVar = new WorkerWrapperBuilder(this.c, this.h, this.l, this, this.i, str);
            aiaVar.f = this.j;
            WorkerWrapper aibVar = new WorkerWrapper(aiaVar);
            GuavaAbstractFuture_ame ameVar = aibVar.h;
            ameVar.aW(new WorkManagerInternalRunnable(this, str, ameVar), this.l.c);
            this.e.put(str, aibVar);
            this.l.a.execute(aibVar);
            WorkLogger a3 = WorkLogger.a();
            String.format("%s: processing %s", getClass().getSimpleName(), str);
            a3.d(new Throwable[0]);
            return true;
        }
    }
}
