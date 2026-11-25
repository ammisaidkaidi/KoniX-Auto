package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import defpackage.WorkLogger;
import defpackage.WorkManagerImpl;
import defpackage.ForegroundServiceStopRunnable;
import defpackage.ForegroundNotificationUpdater;
import defpackage.SystemForegroundDispatcher;
import defpackage.ForegroundNotificationPostRunnable;
import defpackage.ForegroundNotificationCancelRunnable;
import defpackage.SystemForegroundServiceStopRunnable;
import defpackage.ProcessorStartWorkRunnable;
import defpackage.LifecycleService;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SystemForegroundService extends LifecycleService implements ForegroundNotificationUpdater {
    SystemForegroundDispatcher a;
    public NotificationManager b;
    private Handler c;
    private boolean d;

    static {
        WorkLogger.b("SystemFgService");
    }

    private final void e() {
        this.c = new Handler(Looper.getMainLooper());
        this.b = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher ajsVar = new SystemForegroundDispatcher(getApplicationContext());
        this.a = ajsVar;
        if (ajsVar.i == null) {
            ajsVar.i = this;
        } else {
            WorkLogger.a();
            WorkLogger.e(ajs.a, "A callback already exists.", new Throwable[0]);
        }
    }

    @Override // defpackage.ForegroundNotificationUpdater
    public final void a(int i) {
        this.c.post(new SystemForegroundServiceStopRunnable(this, i));
    }

    @Override // defpackage.ForegroundNotificationUpdater
    public final void b(int i, Notification notification) {
        this.c.post(new ForegroundNotificationCancelRunnable(this, i, notification));
    }

    @Override // defpackage.ForegroundNotificationUpdater
    public final void c(int i, int i2, Notification notification) {
        this.c.post(new ForegroundNotificationPostRunnable(this, i, notification, i2));
    }

    @Override // defpackage.ForegroundNotificationUpdater
    public final void d() {
        this.d = true;
        WorkLogger.a().d(new Throwable[0]);
        stopForeground(true);
        stopSelf();
    }

    @Override // defpackage.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        e();
    }

    @Override // defpackage.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.a.h();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.d) {
            WorkLogger.a();
            WorkLogger.f(new Throwable[0]);
            this.a.h();
            e();
            this.d = false;
        }
        if (intent == null) {
            return 3;
        }
        SystemForegroundDispatcher ajsVar = this.a;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            WorkLogger.a();
            String.format("Started foreground service %s", intent);
            WorkLogger.f(new Throwable[0]);
            ajsVar.j.a(new ForegroundServiceStopRunnable(ajsVar, ajsVar.b.d, intent.getStringExtra("KEY_WORKSPEC_ID")));
        } else if (!"ACTION_NOTIFY".equals(action)) {
            if (!"ACTION_CANCEL_WORK".equals(action)) {
                if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                    return 3;
                }
                WorkLogger.a();
                WorkLogger.f(new Throwable[0]);
                ForegroundNotificationUpdater ajrVar = ajsVar.i;
                if (ajrVar == null) {
                    return 3;
                }
                ajrVar.d();
                return 3;
            }
            WorkLogger.a();
            String.format("Stopping foreground work for %s", intent);
            WorkLogger.f(new Throwable[0]);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
                return 3;
            }
            WorkManagerImpl ahxVar = ajsVar.b;
            ahxVar.i.a(new ProcessorStartWorkRunnable(ahxVar, UUID.fromString(stringExtra)));
            return 3;
        }
        ajsVar.g(intent);
        return 3;
    }
}
