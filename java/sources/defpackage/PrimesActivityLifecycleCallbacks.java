package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    public static final /* synthetic */ int c = 0;
    private Boolean i;
    private volatile String j;
    private volatile Activity k;
    private final CallerAppClassifier m;
    public final List a = new CopyOnWriteArrayList();
    private final AtomicInteger d = new AtomicInteger();
    private final AtomicInteger e = new AtomicInteger();
    public final AtomicInteger b = new AtomicInteger();
    private final AtomicInteger f = new AtomicInteger();
    private final AtomicInteger g = new AtomicInteger();
    private final AtomicInteger h = new AtomicInteger();
    private boolean l = false;

    public PrimesActivityLifecycleCallbacks(CallerAppClassifier cvvVar, byte[] bArr) {
        this.m = cvvVar;
    }

    private final void a(Activity activity) {
        c(Boolean.valueOf(ProcessNameReader.c(activity.getApplicationContext())), activity);
    }

    private final void b() {
        if (!this.l && this.d.get() == 0) {
            CallerAppClassifier cvvVar = this.m;
            if (cvvVar.a()) {
                this.l = true;
            } else {
                String valueOf = String.valueOf(cvvVar.a);
                throw new IllegalStateException(valueOf.length() != 0 ? "Primes did not observe lifecycle events in the expected order. This is usually because Primes is not being initialized properly (i.e. from the main thread and ViewDragTouchListener onCreate). Send a cl to the Primes team requesting your app to be allowlisted for your package: ".concat(valueOf) : new String("Primes did not observe lifecycle events in the expected order. This is usually because Primes is not being initialized properly (i.e. from the main thread and ViewDragTouchListener onCreate). Send a cl to the Primes team requesting your app to be allowlisted for your package: "));
            }
        }
    }

    private final void c(Boolean bool, Activity activity) {
        if (bool.equals(this.i)) {
            return;
        }
        this.i = bool;
        if (bool.booleanValue()) {
            for (PrimesMetricServiceMarker bvgVar : this.a) {
                if (bvgVar instanceof ActivityStopEventListener) {
                    ((ActivityStopEventListener) bvgVar).b(activity);
                }
            }
            return;
        }
        for (PrimesMetricServiceMarker bvgVar2 : this.a) {
            if (bvgVar2 instanceof ActivityEventListenerC) {
                ((ActivityEventListenerC) bvgVar2).c(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.d.incrementAndGet();
        this.k = null;
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof BatteryMetricServiceInterface) {
                ((BatteryMetricServiceInterface) bvgVar).a(activity, bundle);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.h.getAndIncrement() == 0) {
            b();
        }
        this.k = null;
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof MemoryMetricServiceInterface) {
                ((MemoryMetricServiceInterface) bvgVar).a();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (this.f.getAndIncrement() == 0) {
            b();
        }
        this.j = null;
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof NetworkMetricServiceInterface) {
                ((NetworkMetricServiceInterface) bvgVar).b(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        if (this.b.getAndIncrement() == 0) {
            b();
        }
        this.k = null;
        this.j = activity.getClass().getSimpleName();
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof ActivityArgumentEventListener) {
                ((ActivityArgumentEventListener) bvgVar).a(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof PrimesNoArgEventListenerA) {
                ((PrimesNoArgEventListenerA) bvgVar).a();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.e.getAndIncrement() == 0) {
            b();
        }
        this.k = null;
        a(activity);
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof ActivityPauseEventListener) {
                ((ActivityPauseEventListener) bvgVar).b(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        if (this.g.getAndIncrement() == 0) {
            b();
        }
        this.k = activity;
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof PrimesNoArgEventListenerB) {
                ((PrimesNoArgEventListenerB) bvgVar).a();
            }
        }
        a(activity);
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        for (PrimesMetricServiceMarker bvgVar : this.a) {
            if (bvgVar instanceof PrimesNoArgEventListenerC) {
                ((PrimesNoArgEventListenerC) bvgVar).a();
            }
        }
        if (NavInstructionTypeEnum >= 20 && this.k != null) {
            c(false, this.k);
        }
        this.k = null;
    }
}
