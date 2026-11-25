package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import defpackage.agr;
import defpackage.ahx;
import defpackage.ajq;
import defpackage.ajr;
import defpackage.ajs;
import defpackage.ajt;
import defpackage.aju;
import defpackage.ajv;
import defpackage.aky;
import defpackage.zt;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SystemForegroundService extends zt implements ajr {
    ajs a;
    public NotificationManager b;
    private Handler c;
    private boolean d;

    static {
        agr.b("SystemFgService");
    }

    private final void e() {
        this.c = new Handler(Looper.getMainLooper());
        this.b = (NotificationManager) getApplicationContext().getSystemService("notification");
        ajs ajsVar = new ajs(getApplicationContext());
        this.a = ajsVar;
        if (ajsVar.i == null) {
            ajsVar.i = this;
        } else {
            agr.a();
            agr.e(ajs.a, "A callback already exists.", new Throwable[0]);
        }
    }

    @Override // defpackage.ajr
    public final void a(int i) {
        this.c.post(new ajv(this, i));
    }

    @Override // defpackage.ajr
    public final void b(int i, Notification notification) {
        this.c.post(new aju(this, i, notification));
    }

    @Override // defpackage.ajr
    public final void c(int i, int i2, Notification notification) {
        this.c.post(new ajt(this, i, notification, i2));
    }

    @Override // defpackage.ajr
    public final void d() {
        this.d = true;
        agr.a().d(new Throwable[0]);
        stopForeground(true);
        stopSelf();
    }

    @Override // defpackage.zt, android.app.Service
    public final void onCreate() {
        super.onCreate();
        e();
    }

    @Override // defpackage.zt, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.a.h();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.d) {
            agr.a();
            agr.f(new Throwable[0]);
            this.a.h();
            e();
            this.d = false;
        }
        if (intent == null) {
            return 3;
        }
        ajs ajsVar = this.a;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            agr.a();
            String.format("Started foreground service %s", intent);
            agr.f(new Throwable[0]);
            ajsVar.j.a(new ajq(ajsVar, ajsVar.b.d, intent.getStringExtra("KEY_WORKSPEC_ID")));
        } else if (!"ACTION_NOTIFY".equals(action)) {
            if (!"ACTION_CANCEL_WORK".equals(action)) {
                if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                    return 3;
                }
                agr.a();
                agr.f(new Throwable[0]);
                ajr ajrVar = ajsVar.i;
                if (ajrVar == null) {
                    return 3;
                }
                ajrVar.d();
                return 3;
            }
            agr.a();
            String.format("Stopping foreground work for %s", intent);
            agr.f(new Throwable[0]);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
                return 3;
            }
            ahx ahxVar = ajsVar.b;
            ahxVar.i.a(new aky(ahxVar, UUID.fromString(stringExtra)));
            return 3;
        }
        ajsVar.g(intent);
        return 3;
    }
}
