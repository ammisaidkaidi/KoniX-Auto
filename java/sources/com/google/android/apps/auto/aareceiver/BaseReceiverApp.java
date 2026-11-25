package com.google.android.apps.auto.aareceiver;

import android.app.Application;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserManager;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.lang.Thread;

/* compiled from: PG */
/* loaded from: classes.dex */
public class BaseReceiverApp extends Application implements WorkDataConverter, cdy {
    public static final FloggerLoggerFactory a;
    FloggerConfig b;
    PhenotypeManager c;
    UserManager d;
    Primes e;
    ReleaseChannelEnum f;

    static {
        StartupTimingRecorder caaVar = caa.a;
        if (caaVar.c == 0) {
            caaVar.c = SystemClock.elapsedRealtime();
            caaVar.l.a = true;
        }
        a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/BaseReceiverApp");
    }

    @Override // defpackage.WorkDataConverter
    public final WorkTaskExecutor a() {
        return new WorkTaskExecutor();
    }

    @Override // defpackage.PhenotypeOptionalSupplier
    public final GuavaOptional b() {
        return GuavaOptional.e(new PhenotypeContext(this));
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        CarCompat.initApp(this);
        if (this.f.equals(ReleaseChannelEnum.AUTOMATION)) {
            synchronized (cdz.a) {
                if ((cdz.d || cdz.f) && !cdz.c) {
                    throw new IllegalStateException("Cannot set enableTestMode after a flag was already read. See cause for stack trace where first read occurred.", cdz.d ? cdz.e : cdz.g);
                }
                cdz.c = true;
            }
        } else {
            PhenotypeContext.e(this);
        }
        if (AaReceiverFlags45353773Facade.c() && !CarCompat.isHeadlessSystemUser(this.d)) {
            final StartupTimingRecorder caaVar = caa.a;
            if (GoogleSignatureVerifier.h() && caaVar.c > 0 && caaVar.d == 0) {
                caaVar.d = SystemClock.elapsedRealtime();
                caaVar.l.b = true;
                GoogleSignatureVerifier.g(new Runnable() { // from class: bzr
                    @Override // java.lang.Runnable
                    public final void run() {
                        StartupTimingRecorder caaVar2 = StartupTimingRecorder.this;
                        caaVar2.b = caaVar2.m.b != null;
                    }
                });
                registerActivityLifecycleCallbacks(new StartupActivityLifecycleTracker(caaVar, this));
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
            Thread.setDefaultUncaughtExceptionHandler(new CrashRecoveryExceptionHandler(this, defaultUncaughtExceptionHandler));
        }
        this.c.a();
    }
}
