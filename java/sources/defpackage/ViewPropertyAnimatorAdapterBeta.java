package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewPropertyAnimatorAdapterBeta extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ AppCompatDelegateImpl a;

    public ViewPropertyAnimatorAdapterBeta(AppCompatDelegateImpl jwVar) {
        this.a = jwVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        this.a.l.setAlpha(1.0f);
        this.a.G.d(null);
        this.a.G = null;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void c() {
        this.a.l.setVisibility(0);
        this.a.l.sendAccessibilityEvent(32);
        if (this.a.l.getParent() instanceof View) {
            ViewCompatAccessibilityStatics.t((View) this.a.l.getParent());
        }
    }
}
