package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cw implements View.OnAttachStateChangeListener {
    final /* synthetic */ View a;

    public cw(View view) {
        this.a = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        hs.t(this.a);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
