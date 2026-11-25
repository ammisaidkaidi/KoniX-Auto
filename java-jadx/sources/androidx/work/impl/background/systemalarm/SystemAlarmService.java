package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import defpackage.agr;
import defpackage.ain;
import defpackage.aip;
import defpackage.alk;
import defpackage.zt;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SystemAlarmService extends zt implements ain {
    private aip a;
    private boolean b;

    static {
        agr.b("SystemAlarmService");
    }

    private final void b() {
        aip aipVar = new aip(this);
        this.a = aipVar;
        if (aipVar.i == null) {
            aipVar.i = this;
        } else {
            agr.a();
            agr.e(aip.a, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        }
    }

    @Override // defpackage.ain
    public final void a() {
        this.b = true;
        agr.a().d(new Throwable[0]);
        alk.b();
        stopSelf();
    }

    @Override // defpackage.zt, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
        this.b = false;
    }

    @Override // defpackage.zt, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.b = true;
        this.a.c();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.b) {
            agr.a();
            agr.f(new Throwable[0]);
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
