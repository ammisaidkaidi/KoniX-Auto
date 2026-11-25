package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class le implements View.OnAttachStateChangeListener {
    final /* synthetic */ li a;

    public le(li liVar) {
        this.a = liVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.a.e;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.a.e = view.getViewTreeObserver();
            }
            li liVar = this.a;
            liVar.e.removeGlobalOnLayoutListener(liVar.c);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
