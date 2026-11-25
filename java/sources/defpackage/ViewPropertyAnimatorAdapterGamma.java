package defpackage;

import android.view.View;
import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewPropertyAnimatorAdapterGamma extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ MenuItemClickDispatcher a;

    public ViewPropertyAnimatorAdapterGamma(MenuItemClickDispatcher jnVar) {
        this.a = jnVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        this.a.a.l.setVisibility(8);
        AppCompatDelegateImpl jwVar = this.a.a;
        PopupWindow popupWindow = jwVar.m;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (jwVar.l.getParent() instanceof View) {
            ViewCompatAccessibilityStatics.t((View) this.a.a.l.getParent());
        }
        this.a.a.l.i();
        this.a.a.G.d(null);
        AppCompatDelegateImpl jwVar2 = this.a.a;
        jwVar2.G = null;
        ViewCompatAccessibilityStatics.t(jwVar2.q);
    }
}
