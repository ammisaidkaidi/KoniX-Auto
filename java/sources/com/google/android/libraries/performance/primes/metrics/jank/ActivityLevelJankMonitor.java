package com.google.android.libraries.performance.primes.metrics.jank;

import android.app.Activity;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ActivityLevelJankMonitor implements ActivityArgumentEventListener, buy {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor");
    private final DaggerInternalFactoryMarker b;
    private boolean c = false;
    private Activity d;

    public ActivityLevelJankMonitor(DaggerInternalFactoryMarker dgzVar, final DaggerProviderInterface dnyVar, final GuavaOptional cocVar, Executor executor) {
        this.b = dgzVar;
        executor.execute(new Runnable() { // from class: bxv
            @Override // java.lang.Runnable
            public final void run() {
                ActivityLevelJankMonitor.this.c(dnyVar, cocVar);
            }
        });
    }

    @Override // defpackage.ActivityArgumentEventListener
    public synchronized void a(Activity activity) {
        this.d = activity;
        if (this.c) {
            ((FrameMetricServiceImpl) this.b.a()).d(activity);
        }
    }

    @Override // defpackage.NetworkMetricServiceInterface
    public synchronized void b(Activity activity) {
        if (!activity.equals(this.d)) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor", "onActivityPaused", 90, "ActivityLevelJankMonitor.java")).t("Activity mismatch (currentActivity=%s, activity=%s)", this.d, activity);
        }
        if (this.c) {
            ((FrameMetricServiceImpl) this.b.a()).a(activity);
        }
        this.d = null;
    }

    public /* synthetic */ void c(DaggerProviderInterface dnyVar, GuavaOptional cocVar) {
        if (((Boolean) dnyVar.a()).booleanValue()) {
            if (cocVar.d() && !((Boolean) ((DaggerProviderInterface) cocVar.a()).a()).booleanValue()) {
                return;
            }
        } else if (!cocVar.d() || !((Boolean) ((DaggerProviderInterface) cocVar.a()).a()).booleanValue()) {
            return;
        }
        synchronized (this) {
            this.c = true;
            Activity activity = this.d;
            if (activity != null) {
                a(activity);
            }
        }
    }
}
