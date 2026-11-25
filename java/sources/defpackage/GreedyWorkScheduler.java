package defpackage;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GreedyWorkScheduler implements WorkSchedulerInterface, aiu, ahc {
    Boolean a;
    private final Context b;
    private final WorkManagerImpl c;
    private final WorkConstraintsTracker d;
    private final DelayedWorkTracker f;
    private boolean g;
    private final Set e = new HashSet();
    private final Object h = new Object();

    static {
        WorkLogger.b("GreedyScheduler");
    }

    public GreedyWorkScheduler(Context context, WorkTaskExecutor agfVar, WorkTaskExecutorHolder amhVar, WorkManagerImpl ahxVar) {
        this.b = context;
        this.c = ahxVar;
        this.d = new WorkConstraintsTracker(context, amhVar, this);
        this.f = new DelayedWorkTracker(this, agfVar.f);
    }

    private final void g() {
        this.a = Boolean.valueOf(WorkProcessUtils.a(this.b));
    }

    private final void h() {
        if (this.g) {
            return;
        }
        this.c.f.b(this);
        this.g = true;
    }

    @Override // defpackage.WorkExecutionListener
    public final void a(String str, boolean z) {
        synchronized (this.h) {
            Iterator it = this.e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WorkSpec akkVar = (WorkSpec) it.next();
                if (akkVar.b.equals(str)) {
                    WorkLogger a = WorkLogger.a();
                    String.format("Stopping tracking for %s", str);
                    a.d(new Throwable[0]);
                    this.e.remove(akkVar);
                    this.d.a(this.e);
                    break;
                }
            }
        }
    }

    @Override // defpackage.WorkSchedulerInterface
    public final void b(String str) {
        Runnable runnable;
        if (this.a == null) {
            g();
        }
        if (!this.a.booleanValue()) {
            WorkLogger.a();
            WorkLogger.f(new Throwable[0]);
            return;
        }
        h();
        WorkLogger a = WorkLogger.a();
        String.format("Cancelling work ID %s", str);
        a.d(new Throwable[0]);
        DelayedWorkTracker aidVar = this.f;
        if (aidVar != null && (runnable = (Runnable) aidVar.b.remove(str)) != null) {
            aidVar.c.a(runnable);
        }
        this.c.g(str);
    }

    @Override // defpackage.WorkSchedulerInterface
    public final void c(WorkSpec... akkVarArr) {
        if (this.a == null) {
            g();
        }
        if (!this.a.booleanValue()) {
            WorkLogger.a();
            WorkLogger.f(new Throwable[0]);
            return;
        }
        h();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec akkVar : akkVarArr) {
            long a = akkVar.a();
            long currentTimeMillis = System.currentTimeMillis();
            if (akkVar.q == 1) {
                if (currentTimeMillis < a) {
                    DelayedWorkTracker aidVar = this.f;
                    if (aidVar != null) {
                        Runnable runnable = (Runnable) aidVar.b.remove(akkVar.b);
                        if (runnable != null) {
                            aidVar.c.a(runnable);
                        }
                        ScheduleWorkSpecRunnable aicVar = new ScheduleWorkSpecRunnable(aidVar, akkVar);
                        aidVar.b.put(akkVar.b, aicVar);
                        aidVar.c.a.postDelayed(aicVar, akkVar.a() - System.currentTimeMillis());
                    }
                } else if (akkVar.b()) {
                    WorkConstraints aghVar = akkVar.j;
                    if (aghVar.c) {
                        WorkLogger a2 = WorkLogger.a();
                        String.format("Ignoring WorkSpec %s, Requires device idle.", akkVar);
                        a2.d(new Throwable[0]);
                    } else if (aghVar.a()) {
                        WorkLogger a3 = WorkLogger.a();
                        String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", akkVar);
                        a3.d(new Throwable[0]);
                    } else {
                        hashSet.add(akkVar);
                        hashSet2.add(akkVar.b);
                    }
                } else {
                    WorkLogger a4 = WorkLogger.a();
                    String.format("Starting work for %s", akkVar.b);
                    a4.d(new Throwable[0]);
                    this.c.f(akkVar.b);
                }
            }
        }
        synchronized (this.h) {
            if (!hashSet.isEmpty()) {
                WorkLogger a5 = WorkLogger.a();
                String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2));
                a5.d(new Throwable[0]);
                this.e.addAll(hashSet);
                this.d.a(this.e);
            }
        }
    }

    @Override // defpackage.WorkSchedulerInterface
    public final boolean d() {
        return false;
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void e(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            WorkLogger a = WorkLogger.a();
            String.format("Constraints met: Scheduling work ID %s", str);
            a.d(new Throwable[0]);
            this.c.f(str);
        }
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            WorkLogger a = WorkLogger.a();
            String.format("Constraints not met: Cancelling work ID %s", str);
            a.d(new Throwable[0]);
            this.c.g(str);
        }
    }
}
