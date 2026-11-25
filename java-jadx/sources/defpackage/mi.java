package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class mi implements View.OnAttachStateChangeListener {
    final /* synthetic */ mj a;

    public mi(mj mjVar) {
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
            mj mjVar = this.a;
            mjVar.d.removeGlobalOnLayoutListener(mjVar.b);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
