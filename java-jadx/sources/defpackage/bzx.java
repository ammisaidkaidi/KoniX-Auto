package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bzx implements ViewTreeObserver.OnPreDrawListener {
    final /* synthetic */ bzy a;
    private final AtomicReference b;

    public bzx(bzy bzyVar, View view) {
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
            bjq.d().postAtFrontOfQueue(new bzu(this.a, 2));
            bjq.g(new bzu(this.a, 3));
        } catch (RuntimeException e) {
        }
        return true;
    }
}
