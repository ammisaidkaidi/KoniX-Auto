package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aqr implements View.OnAttachStateChangeListener {
    final /* synthetic */ View.OnApplyWindowInsetsListener a;
    final /* synthetic */ aqs b;

    public aqr(aqs aqsVar, View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.b = aqsVar;
        this.a = onApplyWindowInsetsListener;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.b.d.getRootView().setOnApplyWindowInsetsListener(this.a);
        this.b.d.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
