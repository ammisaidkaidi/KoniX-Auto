package defpackage;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzy implements Application.ActivityLifecycleCallbacks {
    public final Application a;
    final /* synthetic */ caa b;

    public bzy(caa caaVar, Application application) {
        this.b = caaVar;
        this.a = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        bzs bzsVar = this.b.m.b == null ? this.b.m : this.b.n;
        bzsVar.a = activity.getClass().getSimpleName();
        bzsVar.b = Long.valueOf(elapsedRealtime);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        bzs bzsVar = this.b.n.b == null ? this.b.m : this.b.n;
        if (bzsVar.d == null) {
            bzsVar.d = Long.valueOf(SystemClock.elapsedRealtime());
        }
        try {
            View findViewById = activity.findViewById(R.id.content);
            ViewTreeObserver viewTreeObserver = findViewById.getViewTreeObserver();
            viewTreeObserver.addOnDrawListener(new bzw(this, findViewById, null));
            viewTreeObserver.addOnPreDrawListener(new bzx(this, findViewById));
        } catch (RuntimeException e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        bzs bzsVar = this.b.n.b == null ? this.b.m : this.b.n;
        if (bzsVar.c == null) {
            bzsVar.c = Long.valueOf(SystemClock.elapsedRealtime());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
