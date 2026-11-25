package defpackage;

import android.app.Activity;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxw implements buz, buy {
    private static final csz a = csz.g("com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor");
    private final dgz b;
    private boolean c = false;
    private Activity d;

    public bxw(dgz dgzVar, final dny dnyVar, final coc cocVar, Executor executor) {
        this.b = dgzVar;
        executor.execute(new Runnable() { // from class: bxv
            @Override // java.lang.Runnable
            public final void run() {
                bxw.this.c(dnyVar, cocVar);
            }
        });
    }

    @Override // defpackage.buz
    public synchronized void a(Activity activity) {
        this.d = activity;
        if (this.c) {
            ((byf) this.b.a()).d(activity);
        }
    }

    @Override // defpackage.buy
    public synchronized void b(Activity activity) {
        if (!activity.equals(this.d)) {
            ((csx) a.c().h("com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor", "onActivityPaused", 90, "ActivityLevelJankMonitor.java")).t("Activity mismatch (currentActivity=%s, activity=%s)", this.d, activity);
        }
        if (this.c) {
            ((byf) this.b.a()).a(activity);
        }
        this.d = null;
    }

    public /* synthetic */ void c(dny dnyVar, coc cocVar) {
        if (((Boolean) dnyVar.a()).booleanValue()) {
            if (cocVar.d() && !((Boolean) ((dny) cocVar.a()).a()).booleanValue()) {
                return;
            }
        } else if (!cocVar.d() || !((Boolean) ((dny) cocVar.a()).a()).booleanValue()) {
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
