package defpackage;

import android.app.Application;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserManager;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.lang.Thread;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ata extends Application implements age, cdy {
    public static final csz a;
    atk b;
    axz c;
    UserManager d;
    btz e;
    dgq f;

    static {
        caa caaVar = caa.a;
        if (caaVar.c == 0) {
            caaVar.c = SystemClock.elapsedRealtime();
            caaVar.l.a = true;
        }
        a = csz.g("com/google/android/apps/auto/aareceiver/BaseReceiverApp");
    }

    @Override // defpackage.age
    public final agf a() {
        return new agf();
    }

    @Override // defpackage.cdy
    public final coc b() {
        return coc.e(new cdz(this));
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        CarCompat.initApp(this);
        if (this.f.equals(dgq.AUTOMATION)) {
            synchronized (cdz.a) {
                if ((cdz.d || cdz.f) && !cdz.c) {
                    throw new IllegalStateException("Cannot set enableTestMode after a flag was already read. See cause for stack trace where first read occurred.", cdz.d ? cdz.e : cdz.g);
                }
                cdz.c = true;
            }
        } else {
            cdz.e(this);
        }
        if (dju.c() && !CarCompat.isHeadlessSystemUser(this.d)) {
            final caa caaVar = caa.a;
            if (bjq.h() && caaVar.c > 0 && caaVar.d == 0) {
                caaVar.d = SystemClock.elapsedRealtime();
                caaVar.l.b = true;
                bjq.g(new Runnable() { // from class: bzr
                    @Override // java.lang.Runnable
                    public final void run() {
                        caa caaVar2 = caa.this;
                        caaVar2.b = caaVar2.m.b != null;
                    }
                });
                registerActivityLifecycleCallbacks(new bzy(caaVar, this));
            }
            this.e.a.c();
            this.e.a.a();
        }
        this.b.a();
        Process.myUserHandle();
        if (CarCompat.isHeadlessSystemUser(this.d)) {
            System.exit(2);
            return;
        }
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            Thread.setDefaultUncaughtExceptionHandler(new asz(this, defaultUncaughtExceptionHandler));
        }
        this.c.a();
    }
}
