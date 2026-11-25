package defpackage;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bzw implements ViewTreeObserver.OnDrawListener {
    final /* synthetic */ bzy a;
    private final AtomicReference b;

    public /* synthetic */ bzw(bzy bzyVar, View view, bzv bzvVar) {
        this.a = bzyVar;
        this.b = new AtomicReference(view);
    }

    static /* synthetic */ void b(bzy bzyVar) {
        bjq.f();
        if (bzyVar.b.f != 0) {
            return;
        }
        bzyVar.b.f = SystemClock.elapsedRealtime();
        bzyVar.b.l.h = true;
    }

    static /* synthetic */ void c(bzy bzyVar) {
        bjq.f();
        if (bzyVar.b.g != 0) {
            return;
        }
        bzyVar.b.g = SystemClock.elapsedRealtime();
        bzyVar.b.l.g = true;
        caa.b("Primes-ttfdd-end-and-length-ms", bzyVar.b.g);
        bzyVar.a.unregisterActivityLifecycleCallbacks(bzyVar);
    }

    public /* synthetic */ void a(View view) {
        view.getViewTreeObserver().removeOnDrawListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        final View view = (View) this.b.getAndSet(null);
        if (view == null) {
            return;
        }
        try {
            view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: bzt
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    bzw.this.a(view);
                }
            });
            bjq.d().postAtFrontOfQueue(new bzu(this.a, 1));
            bjq.g(new bzu(this.a, 0));
        } catch (RuntimeException e) {
        }
    }
}
