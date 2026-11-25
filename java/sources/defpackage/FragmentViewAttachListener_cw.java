package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentViewAttachListener_cw implements View.OnAttachStateChangeListener {
    final /* synthetic */ View a;

    public FragmentViewAttachListener_cw(View view) {
        this.a = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        ViewCompatAccessibilityStatics.t(this.a);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
