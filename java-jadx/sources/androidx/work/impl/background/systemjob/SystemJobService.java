package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.PersistableBundle;
import android.text.TextUtils;
import defpackage.agr;
import defpackage.ahc;
import defpackage.ahf;
import defpackage.ahx;
import defpackage.fw;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SystemJobService extends JobService implements ahc {
    private static final String a = agr.b("SystemJobService");
    private ahx b;
    private final Map c = new HashMap();

    private static String b(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return extras.getString("EXTRA_WORK_SPEC_ID");
        } catch (NullPointerException e) {
            return null;
        }
    }

    @Override // defpackage.ahc
    public final void a(String str, boolean z) {
        JobParameters jobParameters;
        agr a2 = agr.a();
        String.format("%s executed on JobScheduler", str);
        a2.d(new Throwable[0]);
        synchronized (this.c) {
            jobParameters = (JobParameters) this.c.remove(str);
        }
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            ahx c = ahx.c(getApplicationContext());
            this.b = c;
            c.f.b(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            agr.a();
            agr.g(a, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ahx ahxVar = this.b;
        if (ahxVar != null) {
            ahxVar.f.c(this);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        if (this.b == null) {
            agr.a().d(new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String b = b(jobParameters);
        if (TextUtils.isEmpty(b)) {
            agr.a();
            agr.e(a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.c) {
            if (this.c.containsKey(b)) {
                agr a2 = agr.a();
                String.format("Job is already being executed by SystemJobService: %s", b);
                a2.d(new Throwable[0]);
                return false;
            }
            agr a3 = agr.a();
            String.format("onStartJob for %s", b);
            a3.d(new Throwable[0]);
            this.c.put(b, jobParameters);
            fw fwVar = new fw();
            if (jobParameters.getTriggeredContentUris() != null) {
                Arrays.asList(jobParameters.getTriggeredContentUris());
            }
            if (jobParameters.getTriggeredContentAuthorities() != null) {
                Arrays.asList(jobParameters.getTriggeredContentAuthorities());
            }
            jobParameters.getNetwork();
            this.b.h(b, fwVar);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        if (this.b == null) {
            agr.a().d(new Throwable[0]);
            return true;
        }
        String b = b(jobParameters);
        if (TextUtils.isEmpty(b)) {
            agr.a();
            agr.e(a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        agr a2 = agr.a();
        String.format("onStopJob for %s", b);
        a2.d(new Throwable[0]);
        synchronized (this.c) {
            this.c.remove(b);
        }
        this.b.g(b);
        ahf ahfVar = this.b.f;
        synchronized (ahfVar.g) {
            contains = ahfVar.f.contains(b);
        }
        return !contains;
    }
}
