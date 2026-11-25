package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PopupAttachListenerMi implements View.OnAttachStateChangeListener {
    final /* synthetic */ StandardMenuPopup a;

    public PopupAttachListenerMi(StandardMenuPopup mjVar) {
        this.a = mjVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.a.d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.a.d = view.getViewTreeObserver();
            }
            StandardMenuPopup mjVar = this.a;
            mjVar.d.removeGlobalOnLayoutListener(mjVar.b);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
