package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import defpackage.WorkLogger;
import defpackage.SimpleCompletionCallback;
import defpackage.SystemAlarmScheduler;
import defpackage.WorkWakeLocks;
import defpackage.LifecycleService;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SystemAlarmService extends LifecycleService implements SimpleCompletionCallback {
    private SystemAlarmScheduler a;
    private boolean b;

    static {
        WorkLogger.b("SystemAlarmService");
    }

    private final void b() {
        SystemAlarmScheduler aipVar = new SystemAlarmScheduler(this);
        this.a = aipVar;
        if (aipVar.i == null) {
            aipVar.i = this;
        } else {
            WorkLogger.a();
            WorkLogger.e(aip.a, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        }
    }

    @Override // defpackage.SimpleCompletionCallback
    public final void a() {
        this.b = true;
        WorkLogger.a().d(new Throwable[0]);
        WorkWakeLocks.b();
        stopSelf();
    }

    @Override // defpackage.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
        this.b = false;
    }

    @Override // defpackage.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.b = true;
        this.a.c();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.b) {
            WorkLogger.a();
            WorkLogger.f(new Throwable[0]);
            this.a.c();
            b();
            this.b = false;
        }
        if (intent == null) {
            return 3;
        }
        this.a.f(intent, i2);
        return 3;
    }
}
