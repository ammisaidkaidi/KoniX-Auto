package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class StartupPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
    final /* synthetic */ StartupActivityLifecycleTracker a;
    private final AtomicReference b;

    public StartupPreDrawListener(StartupActivityLifecycleTracker bzyVar, View view) {
        this.a = bzyVar;
        this.b = new AtomicReference(view);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        View view = (View) this.b.getAndSet(null);
        if (view == null) {
            return true;
        }
        try {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
            GoogleSignatureVerifier.d().postAtFrontOfQueue(new ActivityStartupEndTask(this.a, 2));
            GoogleSignatureVerifier.g(new ActivityStartupEndTask(this.a, 3));
        } catch (RuntimeException e) {
        }
        return true;
    }
}
