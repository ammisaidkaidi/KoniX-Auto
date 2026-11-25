package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemJobScheduler implements WorkSchedulerInterface {
    private static final String a = WorkLogger.b("SystemJobScheduler");
    private final Context b;
    private final JobScheduler c;
    private final WorkManagerImpl d;
    private final SystemJobInfoConverter e;

    public SystemJobScheduler(Context context, WorkManagerImpl ahxVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        SystemJobInfoConverter aiqVar = new SystemJobInfoConverter(context);
        this.b = context;
        this.d = ahxVar;
        this.c = jobScheduler;
        this.e = aiqVar;
    }

    public static void a(Context context) {
        List h;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (ProtoMessageSingleEnumFieldH = h(context, jobScheduler)) == null || h.isEmpty()) {
            return;
        }
        Iterator it = h.iterator();
        while (it.hasNext()) {
            i(jobScheduler, ((JobInfo) it.next()).getId());
        }
    }

    public static boolean f(Context context, WorkManagerImpl ahxVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> h = h(context, jobScheduler);
        SystemIdInfoDaoImpl p = ahxVar.d.p();
        boolean z = false;
        FrameworkSqliteDatabaseFacade a2 = FrameworkSqliteDatabaseFacade.a("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        p.a.e();
        Cursor k = p.a.k(a2);
        try {
            ArrayList arrayList = new ArrayList(k.getCount());
            while (k.moveToNext()) {
                arrayList.add(k.getString(0));
            }
            HashSet hashSet = new HashSet(ProtoMessageSingleEnumFieldH != null ? h.size() : 0);
            if (ProtoMessageSingleEnumFieldH != null && !h.isEmpty()) {
                for (JobInfo jobInfo : h) {
                    String g = g(jobInfo);
                    if (TextUtils.isEmpty(ProtoMessageIntAndBooleanG)) {
                        i(jobScheduler, jobInfo.getId());
                    } else {
                        hashSet.add(ProtoMessageIntAndBooleanG);
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!hashSet.contains((String) it.next())) {
                    WorkLogger.a().d(new Throwable[0]);
                    z = true;
                    break;
                }
            }
            if (IcuMessageFormat) {
                WorkDatabase workDatabase = ahxVar.d;
                workDatabase.f();
                try {
                    WorkSpecDao n = workDatabase.n();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        n.h((String) it2.next(), -1L);
                    }
                    workDatabase.h();
                } finally {
                    workDatabase.g();
                }
            }
            return z;
        } finally {
            k.close();
            a2.i();
        }
    }

    private static String g(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException e) {
            return null;
        }
    }

    private static List h(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            WorkLogger.a();
            WorkLogger.e(a, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    private static void i(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(NavInstructionTypeEnum);
        } catch (Throwable th) {
            WorkLogger.a();
            WorkLogger.e(a, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(NavInstructionTypeEnum)), th);
        }
    }

    @Override // defpackage.WorkSchedulerInterface
    public final void b(String str) {
        ArrayList arrayList;
        List<JobInfo> h = h(this.b, this.c);
        if (ProtoMessageSingleEnumFieldH == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(2);
            for (JobInfo jobInfo : h) {
                if (str.equals(g(jobInfo))) {
                    arrayList2.add(Integer.valueOf(jobInfo.getId()));
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            i(this.c, ((Integer) it.next()).intValue());
        }
        this.d.d.p().c(str);
    }

    @Override // defpackage.WorkSchedulerInterface
    public final void c(WorkSpec... akkVarArr) {
        int i;
        WorkDatabase workDatabase = this.d.d;
        WorkIdGenerator aldVar = new WorkIdGenerator(workDatabase);
        for (WorkSpec akkVar : akkVarArr) {
            workDatabase.f();
            try {
                WorkSpec a2 = workDatabase.n().a(akkVar.b);
                if (a2 == null) {
                    WorkLogger.a();
                    WorkLogger.g(a, "Skipping scheduling " + akkVar.b + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.h();
                } else if (a2.q != 1) {
                    WorkLogger.a();
                    WorkLogger.g(a, "Skipping scheduling " + akkVar.b + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.h();
                } else {
                    WorkIdCountPair a3 = workDatabase.p().a(akkVar.b);
                    if (a3 != null) {
                        i = a3.b;
                    } else {
                        int i2 = this.d.c.d;
                        synchronized (WorkIdGenerator.class) {
                            int a4 = aldVar.a("next_job_scheduler_id");
                            if (a4 < 0) {
                                aldVar.b("next_job_scheduler_id", 1);
                                i = 0;
                            } else {
                                i = a4;
                            }
                        }
                    }
                    if (a3 == null) {
                        this.d.d.p().b(new WorkIdCountPair(akkVar.b, i));
                    }
                    e(akkVar, i);
                    workDatabase.h();
                }
                workDatabase.g();
            } catch (Throwable th) {
                workDatabase.g();
                throw th;
            }
        }
    }

    @Override // defpackage.WorkSchedulerInterface
    public final boolean d() {
        return true;
    }

    public final void e(WorkSpec akkVar, int i) {
        int i2;
        SystemJobInfoConverter aiqVar = this.e;
        WorkConstraints aghVar = akkVar.j;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", akkVar.b);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", akkVar.d());
        JobInfo.Builder extras = new JobInfo.Builder(i, aiqVar.a).setRequiresCharging(aghVar.b).setRequiresDeviceIdle(aghVar.c).setExtras(persistableBundle);
        int i3 = aghVar.i;
        if (Build.VERSION.SDK_INT < 30 || i3 != 6) {
            int i4 = i3 - 1;
            if (i3 == 0) {
                throw null;
            }
            switch (i4) {
                case 0:
                    i2 = 0;
                    break;
                case 1:
                    i2 = 1;
                    break;
                case 2:
                    i2 = 2;
                    break;
                case 3:
                    i2 = 3;
                    break;
                case 4:
                    i2 = 4;
                    break;
                default:
                    WorkLogger a2 = WorkLogger.a();
                    String.format("API version too low. Cannot convert network type value %s", ez.n(i3));
                    a2.d(new Throwable[0]);
                    i2 = 1;
                    break;
            }
            extras.setRequiredNetworkType(i2);
        } else {
            extras.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
        if (!aghVar.c) {
            extras.setBackoffCriteria(akkVar.l, akkVar.r == 2 ? 0 : 1);
        }
        long max = Math.max(akkVar.a() - System.currentTimeMillis(), 0L);
        if (Build.VERSION.SDK_INT <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else if (!akkVar.p) {
            extras.setImportantWhileForeground(true);
        }
        if (aghVar.a()) {
            for (ContentUriTrigger agiVar : aghVar.h.a) {
                extras.addTriggerContentUri(new JobInfo.TriggerContentUri(agiVar.a, agiVar.b ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(aghVar.f);
            extras.setTriggerContentMaxDelay(aghVar.g);
        }
        extras.setPersisted(false);
        extras.setRequiresBatteryNotLow(aghVar.d);
        extras.setRequiresStorageNotLow(aghVar.e);
        int i5 = akkVar.k;
        if (SqliteContentValuesHelper.c() && akkVar.p && i5 <= 0) {
            extras.setExpedited(true);
        }
        JobInfo build = extras.build();
        WorkLogger a3 = WorkLogger.a();
        String.format("Scheduling work ID %s Job ID %s", akkVar.b, Integer.valueOf(NavInstructionTypeEnum));
        a3.d(new Throwable[0]);
        try {
            if (this.c.schedule(build) == 0) {
                WorkLogger.a();
                WorkLogger.g(a, String.format("Unable to schedule work ID %s", akkVar.b), new Throwable[0]);
                if (akkVar.p && akkVar.s == 1) {
                    akkVar.p = false;
                    String.format("Scheduling a non-expedited job (work ID %s)", akkVar.b);
                    WorkLogger.a().d(new Throwable[0]);
                    e(akkVar, i);
                }
            }
        } catch (IllegalStateException e) {
            List h = h(this.b, this.c);
            int size = h != null ? h.size() : 0;
            Locale locale = Locale.getDefault();
            int i6 = this.d.c.e;
            String format = String.format(locale, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs ViewDragTouchListener JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(size), Integer.valueOf(this.d.d.n().c().size()), 20);
            WorkLogger.a();
            WorkLogger.e(a, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            WorkLogger.a();
            WorkLogger.e(a, String.format("Unable to schedule %s", akkVar), th);
        }
    }
}
