package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import com.google.android.embedded.projection.R;
import java.util.Arrays;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkManagerImpl extends WorkManagerBase {
    public static final Object a;
    private static WorkManagerImpl k;
    private static WorkManagerImpl l;
    public final Context b;
    public final WorkTaskExecutor c;
    public final WorkDatabase d;
    public final List e;
    public final WorkProcessor f;
    public boolean g;
    public BroadcastReceiver.PendingResult h;
    public final WorkTaskExecutorHolder i;
    public final WorkIdGenerator j;

    static {
        WorkLogger.b("WorkManagerImpl");
        k = null;
        l = null;
        a = new Object();
    }

    public WorkManagerImpl(Context context, WorkTaskExecutor agfVar, WorkTaskExecutorHolder amhVar) {
        WorkDatabase m = WorkDatabase.m(context.getApplicationContext(), amhVar.a, context.getResources().getBoolean(R.bool.workmanager_test_configuration));
        Context applicationContext = context.getApplicationContext();
        WorkLogger.c(new WorkLogger(4));
        List asList = Arrays.asList(WorkSpecEntity.a(applicationContext, this), new GreedyWorkScheduler(applicationContext, agfVar, amhVar, this));
        WorkProcessor ahfVar = new WorkProcessor(context, agfVar, amhVar, m, asList);
        Context applicationContext2 = context.getApplicationContext();
        this.b = applicationContext2;
        this.c = agfVar;
        this.i = amhVar;
        this.d = m;
        this.e = asList;
        this.f = ahfVar;
        this.j = new WorkIdGenerator(ProtoCompositeMessageM);
        this.g = false;
        if (applicationContext2.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        amhVar.a(new ForceStopRescheduleRunnable(applicationContext2, this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0032, code lost:
    
        r2 = r6.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
    
        if (defpackage.WorkManagerImpl.l != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003a, code lost:
    
        defpackage.WorkManagerImpl.l = new defpackage.WorkManagerImpl(r2, r1, new defpackage.WorkTaskExecutorHolder(r1.b));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0048, code lost:
    
        defpackage.WorkManagerImpl.k = defpackage.WorkManagerImpl.l;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static WorkManagerImpl c(Context context) {
        WorkManagerImpl ahxVar;
        Object obj = a;
        synchronized (obj) {
            synchronized (obj) {
                ahxVar = k;
                if (ahxVar == null) {
                    ahxVar = l;
                }
            }
            return ahxVar;
        }
        if (ahxVar == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof WorkDataConverter)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            WorkTaskExecutor a2 = ((WorkDataConverter) applicationContext).a();
            synchronized (obj) {
                WorkManagerImpl ahxVar2 = k;
                if (ahxVar2 != null && l != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                ahxVar = c(applicationContext);
            }
        }
        return ahxVar;
    }

    @Override // defpackage.WorkManagerBase
    public final void a(String str, List list) {
        new EnqueuedWorkLiveData(this, str, list).M();
    }

    public final void d() {
        synchronized (SingleStringProtoMessage) {
            this.g = true;
            BroadcastReceiver.PendingResult pendingResult = this.h;
            if (pendingResult != null) {
                pendingResult.finish();
                this.h = null;
            }
        }
    }

    public final void e() {
        SystemJobScheduler.a(this.b);
        WorkSpecDao n = this.d.n();
        WorkSpecDaoImpl akvVar = (WorkSpecDaoImpl) n;
        akvVar.a.e();
        FrameworkSqliteStatement d = akvVar.f.d();
        akvVar.a.f();
        try {
            d.a();
            ((WorkSpecDaoImpl) n).a.h();
            akvVar.a.g();
            akvVar.f.e(ProtoMsgIntStringInt);
            WorkSpecEntity.b(this.c, this.d, this.e);
        } catch (Throwable th) {
            akvVar.a.g();
            akvVar.f.e(ProtoMsgIntStringInt);
            throw th;
        }
    }

    public final void f(String str) {
        h(str, null);
    }

    public final void g(String str) {
        this.i.a(new StopWorkRunnable(this, str, false));
    }

    public final void h(String str, WorkDataEnumConverters fwVar) {
        this.i.a(new CancelWorkByIdRunnable(this, str, fwVar, null, null));
    }
}
