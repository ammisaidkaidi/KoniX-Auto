package defpackage;

import android.content.Context;
import android.database.Cursor;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkerWrapper implements Runnable {
    static final String a = WorkLogger.b("WorkerWrapper");
    public static final /* synthetic */ int j = 0;
    final Context b;
    WorkSpec c;
    public volatile boolean f;
    final WorkTaskExecutorHolder g;
    private final String k;
    private final List l;
    private final WorkTaskExecutor m;
    private final WorkProcessorMarkerInterface n;
    private final WorkDatabase o;
    private final WorkSpecDao p;
    private List q;
    private String r;
    private final WorkAuxiliaryDaoImpl s;
    private final WorkAuxiliaryDaoImpl t;
    GuavaPreconditionsSuppliersUtil i = ex.f();
    final GuavaAbstractFuture_ame h = GuavaAbstractFuture_ame.h();
    ListenableFuture e = null;
    ListenableWorker d = null;

    public WorkerWrapper(WorkerWrapperBuilder aiaVar) {
        this.b = aiaVar.a;
        this.g = aiaVar.g;
        this.n = aiaVar.b;
        this.k = aiaVar.e;
        this.l = aiaVar.f;
        this.m = aiaVar.c;
        WorkDatabase workDatabase = aiaVar.d;
        this.o = workDatabase;
        this.p = workDatabase.n();
        this.t = workDatabase.u();
        this.s = workDatabase.r();
    }

    private final void d() {
        this.o.f();
        try {
            this.p.i(1, this.k);
            this.p.e(this.k, System.currentTimeMillis());
            this.p.h(this.k, -1L);
            this.o.h();
        } finally {
            this.o.g();
            f(true);
        }
    }

    private final void e() {
        this.o.f();
        try {
            this.p.e(this.k, System.currentTimeMillis());
            this.p.i(1, this.k);
            WorkSpecDao aklVar = this.p;
            String str = this.k;
            ((WorkSpecDaoImpl) aklVar).a.e();
            FrameworkSqliteStatement d = ((WorkSpecDaoImpl) aklVar).e.d();
            if (str == null) {
                d.e(1);
            } else {
                d.f(1, str);
            }
            ((WorkSpecDaoImpl) aklVar).a.f();
            try {
                d.a();
                ((WorkSpecDaoImpl) aklVar).a.h();
                ((WorkSpecDaoImpl) aklVar).a.g();
                ((WorkSpecDaoImpl) aklVar).e.e(ProtoMsgIntStringInt);
                this.p.h(this.k, -1L);
                this.o.h();
            } catch (Throwable th) {
                ((WorkSpecDaoImpl) aklVar).a.g();
                ((WorkSpecDaoImpl) aklVar).e.e(ProtoMsgIntStringInt);
                throw th;
            }
        } finally {
            this.o.g();
            f(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:3:0x0005, B:10:0x0032, B:12:0x003a, B:14:0x0043, B:15:0x0057, B:17:0x005b, B:19:0x005f, B:21:0x0065, B:22:0x006e, B:30:0x0080, B:32:0x0081, B:38:0x0096, B:39:0x009c, B:5:0x0022, B:7:0x0029, B:24:0x006f, B:25:0x007c), top: B:2:0x0005, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043 A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:3:0x0005, B:10:0x0032, B:12:0x003a, B:14:0x0043, B:15:0x0057, B:17:0x005b, B:19:0x005f, B:21:0x0065, B:22:0x006e, B:30:0x0080, B:32:0x0081, B:38:0x0096, B:39:0x009c, B:5:0x0022, B:7:0x0029, B:24:0x006f, B:25:0x007c), top: B:2:0x0005, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void f(boolean z) {
        boolean z2;
        ListenableWorker listenableWorker;
        WorkProcessorMarkerInterface ajpVar;
        this.o.f();
        try {
            WorkSpecDao n = this.o.n();
            FrameworkSqliteDatabaseFacade a2 = FrameworkSqliteDatabaseFacade.a("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
            ((WorkSpecDaoImpl) n).a.e();
            Cursor k = ((WorkSpecDaoImpl) n).a.k(a2);
            try {
                if (k.moveToFirst()) {
                    if (k.getInt(0) != 0) {
                        z2 = true;
                        if (!z2) {
                            WorkPackageManagerHelper.a(this.b, RescheduleReceiver.class, false);
                        }
                        if (IcuMessageFormat) {
                            this.p.i(1, this.k);
                            this.p.h(this.k, -1L);
                        }
                        if (this.c != null && (listenableWorker = this.d) != null && listenableWorker.g()) {
                            ajpVar = this.n;
                            String str = this.k;
                            synchronized (((WorkProcessor) ajpVar).g) {
                                ((WorkProcessor) ajpVar).d.remove(str);
                                ((WorkProcessor) ajpVar).d();
                            }
                        }
                        this.o.h();
                        this.o.g();
                        this.h.e(Boolean.valueOf(IcuMessageFormat));
                    }
                }
                z2 = false;
                if (!z2) {
                }
                if (IcuMessageFormat) {
                }
                if (this.c != null) {
                    ajpVar = this.n;
                    String str2 = this.k;
                    synchronized (((WorkProcessor) ajpVar).g) {
                    }
                }
                this.o.h();
                this.o.g();
                this.h.e(Boolean.valueOf(IcuMessageFormat));
            } finally {
                k.close();
                a2.i();
            }
        } catch (Throwable th) {
            this.o.g();
            throw th;
        }
    }

    private final void g() {
        int f = this.p.f(this.k);
        if (NavManeuverTypeEnum == 2) {
            WorkLogger a2 = WorkLogger.a();
            String.format("Status for %s ConstraintLayoutStateParser RUNNING;not doing any work and rescheduling for later execution", this.k);
            a2.d(new Throwable[0]);
            f(true);
            return;
        }
        WorkLogger a3 = WorkLogger.a();
        String.format("Status for %s is %s; not doing any work", this.k, GuavaCollectPreconditionsUtil.z(NavManeuverTypeEnum));
        a3.d(new Throwable[0]);
        f(false);
    }

    final void a() {
        if (!c()) {
            this.o.f();
            try {
                int f = this.p.f(this.k);
                WorkProgressDaoImpl q = this.o.q();
                String str = this.k;
                q.a.e();
                FrameworkSqliteStatement d = q.b.d();
                if (str == null) {
                    d.e(1);
                } else {
                    d.f(1, str);
                }
                q.a.f();
                try {
                    d.a();
                    q.a.h();
                    q.a.g();
                    q.b.e(ProtoMsgIntStringInt);
                    if (NavManeuverTypeEnum == 0) {
                        f(false);
                    } else if (NavManeuverTypeEnum == 2) {
                        GuavaPreconditionsSuppliersUtil exVar = this.i;
                        if (exVar instanceof WorkerResultSuccess) {
                            WorkLogger.a();
                            String.format("Worker result SUCCESS for %s", this.r);
                            WorkLogger.f(new Throwable[0]);
                            if (this.c.d()) {
                                e();
                            } else {
                                this.o.f();
                                try {
                                    this.p.i(3, this.k);
                                    this.p.d(this.k, ((WorkerResultSuccess) this.i).a);
                                    long currentTimeMillis = System.currentTimeMillis();
                                    for (String str2 : this.t.d(this.k)) {
                                        if (this.p.f(str2) == 5) {
                                            WorkAuxiliaryDaoImpl akxVar = this.t;
                                            FrameworkSqliteDatabaseFacade a2 = FrameworkSqliteDatabaseFacade.a("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
                                            if (str2 == null) {
                                                a2.e(1);
                                            } else {
                                                a2.f(1, str2);
                                            }
                                            akxVar.a.e();
                                            Cursor k = akxVar.a.k(a2);
                                            try {
                                                if (k.moveToFirst() && k.getInt(0) != 0) {
                                                    WorkLogger.a();
                                                    String.format("Setting status to enqueued for %s", str2);
                                                    WorkLogger.f(new Throwable[0]);
                                                    this.p.i(1, str2);
                                                    this.p.e(str2, currentTimeMillis);
                                                }
                                            } finally {
                                                k.close();
                                                a2.i();
                                            }
                                        }
                                    }
                                    this.o.h();
                                    this.o.g();
                                    f(false);
                                } catch (Throwable th) {
                                    this.o.g();
                                    f(false);
                                    throw th;
                                }
                            }
                        } else if (exVar instanceof WorkerResultRetry) {
                            WorkLogger.a();
                            String.format("Worker result RETRY for %s", this.r);
                            WorkLogger.f(new Throwable[0]);
                            d();
                        } else {
                            WorkLogger.a();
                            String.format("Worker result FAILURE for %s", this.r);
                            WorkLogger.f(new Throwable[0]);
                            if (this.c.d()) {
                                e();
                            } else {
                                b();
                            }
                        }
                    } else if (!GuavaCollectPreconditionsUtil.A(NavManeuverTypeEnum)) {
                        d();
                    }
                    this.o.h();
                } catch (Throwable th2) {
                    q.a.g();
                    q.b.e(ProtoMsgIntStringInt);
                    throw th2;
                }
            } finally {
                this.o.g();
            }
        }
        List list = this.l;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((WorkSchedulerInterface) it.next()).b(this.k);
            }
            WorkSpecEntity.b(this.m, this.o, this.l);
        }
    }

    final void b() {
        this.o.f();
        try {
            String str = this.k;
            LinkedList linkedList = new LinkedList();
            linkedList.add(str);
            while (!linkedList.isEmpty()) {
                String str2 = (String) linkedList.remove();
                if (this.p.f(str2) != 6) {
                    this.p.i(4, str2);
                }
                linkedList.addAll(this.t.d(str2));
            }
            this.p.d(this.k, ((WorkerResultFailure) this.i).a);
            this.o.h();
        } finally {
            this.o.g();
            f(false);
        }
    }

    public final boolean c() {
        if (!this.f) {
            return false;
        }
        WorkLogger a2 = WorkLogger.a();
        String.format("Work interrupted for %s", this.r);
        a2.d(new Throwable[0]);
        if (this.p.f(this.k) == 0) {
            f(false);
        } else {
            f(!GuavaCollectPreconditionsUtil.A(r0));
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WorkDatabase workDatabase;
        WorkData a2;
        List<String> a3 = this.s.a(this.k);
        this.q = a3;
        StringBuilder sb = new StringBuilder("Work [ id=");
        StaggeredGridLayoutParams.append(this.k);
        StaggeredGridLayoutParams.append(", tags={ ");
        boolean z = false;
        boolean z2 = true;
        for (String str : a3) {
            if (!z2) {
                StaggeredGridLayoutParams.append(", ");
            }
            StaggeredGridLayoutParams.append(str);
            z2 = false;
        }
        StaggeredGridLayoutParams.append(" } ]");
        this.r = StaggeredGridLayoutParams.toString();
        if (c()) {
            return;
        }
        this.o.f();
        try {
            WorkSpec a4 = this.p.a(this.k);
            this.c = a4;
            if (a4 == null) {
                WorkLogger.a();
                WorkLogger.e(a, String.format("Didn't find WorkSpec for id %s", this.k), new Throwable[0]);
                f(false);
                this.o.h();
                workDatabase = this.o;
            } else {
                if (a4.q == 1) {
                    if (a4.d() || this.c.c()) {
                        long currentTimeMillis = System.currentTimeMillis();
                        WorkSpec akkVar = this.c;
                        if (akkVar.m != 0 && currentTimeMillis < akkVar.a()) {
                            WorkLogger a5 = WorkLogger.a();
                            String.format("Delaying execution for %s because it is being executed before schedule.", this.c.c);
                            a5.d(new Throwable[0]);
                            f(true);
                            this.o.h();
                            workDatabase = this.o;
                        }
                    }
                    this.o.h();
                    this.o.g();
                    if (this.c.d()) {
                        a2 = this.c.e;
                    } else {
                        WorkerInstantiatorBase b = WorkerInstantiatorBase.b(this.c.d);
                        if (ProtoLiteMessageBase == null) {
                            WorkLogger.a();
                            WorkLogger.e(a, String.format("Could not create Input Merger %s", this.c.d), new Throwable[0]);
                            b();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.c.e);
                        WorkSpecDao aklVar = this.p;
                        String str2 = this.k;
                        FrameworkSqliteDatabaseFacade a6 = FrameworkSqliteDatabaseFacade.a("SELECT output FROM workspec WHERE WindowInsetsCompatApi28Impl IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
                        if (str2 == null) {
                            a6.e(1);
                        } else {
                            a6.f(1, str2);
                        }
                        WorkSpecDaoImpl akvVar = (WorkSpecDaoImpl) aklVar;
                        akvVar.a.e();
                        Cursor k = akvVar.a.k(a6);
                        try {
                            ArrayList arrayList2 = new ArrayList(k.getCount());
                            while (k.moveToNext()) {
                                arrayList2.add(WorkData.a(k.getBlob(0)));
                            }
                            k.close();
                            a6.i();
                            arrayList.addAll(arrayList2);
                            a2 = b.a(arrayList);
                        } catch (Throwable th) {
                            k.close();
                            a6.i();
                            throw th;
                        }
                    }
                    UUID fromString = UUID.fromString(this.k);
                    List list = this.q;
                    int i = this.c.k;
                    WorkTaskExecutor agfVar = this.m;
                    Executor executor = agfVar.a;
                    ReflectiveWorkerFactory ahaVar = agfVar.c;
                    int i2 = alq.a;
                    WorkerParameters workerParameters = new WorkerParameters(fromString, a2, list, executor, ahaVar, new ForegroundInfoProviderImpl(this.o, this.n, this.g));
                    if (this.d == null) {
                        this.d = this.m.c.a(this.b, this.c.c, workerParameters);
                    }
                    ListenableWorker listenableWorker = this.d;
                    if (listenableWorker == null) {
                        WorkLogger.a();
                        WorkLogger.e(a, String.format("Could not create Worker %s", this.c.c), new Throwable[0]);
                        b();
                        return;
                    }
                    if (listenableWorker.d) {
                        WorkLogger.a();
                        WorkLogger.e(a, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.c.c), new Throwable[0]);
                        b();
                        return;
                    }
                    listenableWorker.d = true;
                    this.o.f();
                    try {
                        if (this.p.f(this.k) == 1) {
                            this.p.i(2, this.k);
                            WorkSpecDao aklVar2 = this.p;
                            String str3 = this.k;
                            ((WorkSpecDaoImpl) aklVar2).a.e();
                            FrameworkSqliteStatement d = ((WorkSpecDaoImpl) aklVar2).d.d();
                            if (str3 == null) {
                                d.e(1);
                            } else {
                                d.f(1, str3);
                            }
                            ((WorkSpecDaoImpl) aklVar2).a.f();
                            try {
                                d.a();
                                ((WorkSpecDaoImpl) aklVar2).a.h();
                                ((WorkSpecDaoImpl) aklVar2).a.g();
                                ((WorkSpecDaoImpl) aklVar2).d.e(ProtoMsgIntStringInt);
                                z = true;
                            } catch (Throwable th2) {
                                ((WorkSpecDaoImpl) aklVar2).a.g();
                                ((WorkSpecDaoImpl) aklVar2).d.e(ProtoMsgIntStringInt);
                                throw th2;
                            }
                        }
                        this.o.h();
                        if (!z) {
                            g();
                            return;
                        }
                        if (c()) {
                            return;
                        }
                        GuavaAbstractFuture_ame h = GuavaAbstractFuture_ame.h();
                        ForegroundNotificationProgressRunnable alnVar = new ForegroundNotificationProgressRunnable(this.b, this.c, this.d, workerParameters.e, this.g);
                        this.g.c.execute(alnVar);
                        GuavaAbstractFuture_ame ameVar = alnVar.f;
                        ameVar.aW(new WorkerWrapperLaunchRunnable(this, ameVar, h), this.g.c);
                        h.aW(new WorkerWrapperResultListener(this, h, this.r), this.g.a);
                        return;
                    } finally {
                    }
                }
                g();
                this.o.h();
                WorkLogger a7 = WorkLogger.a();
                String.format("%s is not in ENQUEUED state. Nothing more to do.", this.c.c);
                a7.d(new Throwable[0]);
                workDatabase = this.o;
            }
            workDatabase.g();
        } finally {
        }
    }
}
