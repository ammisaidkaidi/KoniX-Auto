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
public final class air implements ahg {
    private static final String a = agr.b("SystemJobScheduler");
    private final Context b;
    private final JobScheduler c;
    private final ahx d;
    private final aiq e;

    public air(Context context, ahx ahxVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        aiq aiqVar = new aiq(context);
        this.b = context;
        this.d = ahxVar;
        this.c = jobScheduler;
        this.e = aiqVar;
    }

    public static void a(Context context) {
        List h;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (h = h(context, jobScheduler)) == null || h.isEmpty()) {
            return;
        }
        Iterator it = h.iterator();
        while (it.hasNext()) {
            i(jobScheduler, ((JobInfo) it.next()).getId());
        }
    }

    public static boolean f(Context context, ahx ahxVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> h = h(context, jobScheduler);
        akc p = ahxVar.d.p();
        boolean z = false;
        aeh a2 = aeh.a("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        p.a.e();
        Cursor k = p.a.k(a2);
        try {
            ArrayList arrayList = new ArrayList(k.getCount());
            while (k.moveToNext()) {
                arrayList.add(k.getString(0));
            }
            HashSet hashSet = new HashSet(h != null ? h.size() : 0);
            if (h != null && !h.isEmpty()) {
                for (JobInfo jobInfo : h) {
                    String g = g(jobInfo);
                    if (TextUtils.isEmpty(g)) {
                        i(jobScheduler, jobInfo.getId());
                    } else {
                        hashSet.add(g);
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!hashSet.contains((String) it.next())) {
                    agr.a().d(new Throwable[0]);
                    z = true;
                    break;
                }
            }
            if (z) {
                WorkDatabase workDatabase = ahxVar.d;
                workDatabase.f();
                try {
                    akl n = workDatabase.n();
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
            agr.a();
            agr.e(a, "getAllPendingJobs() is not reliable on this device.", th);
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
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            agr.a();
            agr.e(a, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    @Override // defpackage.ahg
    public final void b(String str) {
        ArrayList arrayList;
        List<JobInfo> h = h(this.b, this.c);
        if (h == null) {
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

    @Override // defpackage.ahg
    public final void c(akk... akkVarArr) {
        int i;
        WorkDatabase workDatabase = this.d.d;
        ald aldVar = new ald(workDatabase);
        for (akk akkVar : akkVarArr) {
            workDatabase.f();
            try {
                akk a2 = workDatabase.n().a(akkVar.b);
                if (a2 == null) {
                    agr.a();
                    agr.g(a, "Skipping scheduling " + akkVar.b + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.h();
                } else if (a2.q != 1) {
                    agr.a();
                    agr.g(a, "Skipping scheduling " + akkVar.b + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.h();
                } else {
                    ajz a3 = workDatabase.p().a(akkVar.b);
                    if (a3 != null) {
                        i = a3.b;
                    } else {
                        int i2 = this.d.c.d;
                        synchronized (ald.class) {
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
                        this.d.d.p().b(new ajz(akkVar.b, i));
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

    @Override // defpackage.ahg
    public final boolean d() {
        return true;
    }

    public final void e(akk akkVar, int i) {
        int i2;
        aiq aiqVar = this.e;
        agh aghVar = akkVar.j;
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
                    agr a2 = agr.a();
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
            for (agi agiVar : aghVar.h.a) {
                extras.addTriggerContentUri(new JobInfo.TriggerContentUri(agiVar.a, agiVar.b ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(aghVar.f);
            extras.setTriggerContentMaxDelay(aghVar.g);
        }
        extras.setPersisted(false);
        extras.setRequiresBatteryNotLow(aghVar.d);
        extras.setRequiresStorageNotLow(aghVar.e);
        int i5 = akkVar.k;
        if (re.c() && akkVar.p && i5 <= 0) {
            extras.setExpedited(true);
        }
        JobInfo build = extras.build();
        agr a3 = agr.a();
        String.format("Scheduling work ID %s Job ID %s", akkVar.b, Integer.valueOf(i));
        a3.d(new Throwable[0]);
        try {
            if (this.c.schedule(build) == 0) {
                agr.a();
                agr.g(a, String.format("Unable to schedule work ID %s", akkVar.b), new Throwable[0]);
                if (akkVar.p && akkVar.s == 1) {
                    akkVar.p = false;
                    String.format("Scheduling a non-expedited job (work ID %s)", akkVar.b);
                    agr.a().d(new Throwable[0]);
                    e(akkVar, i);
                }
            }
        } catch (IllegalStateException e) {
            List h = h(this.b, this.c);
            int size = h != null ? h.size() : 0;
            Locale locale = Locale.getDefault();
            int i6 = this.d.c.e;
            String format = String.format(locale, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(size), Integer.valueOf(this.d.d.n().c().size()), 20);
            agr.a();
            agr.e(a, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            agr.a();
            agr.e(a, String.format("Unable to schedule %s", akkVar), th);
        }
    }
}
