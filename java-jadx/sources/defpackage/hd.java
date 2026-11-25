package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class hd implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
    public hd() {
        new WeakHashMap();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
