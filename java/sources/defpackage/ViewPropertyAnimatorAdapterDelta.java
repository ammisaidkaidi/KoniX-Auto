package defpackage;

import android.support.v7.widget.ActionBarOverlayLayout;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewPropertyAnimatorAdapterDelta extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ DecorToolbarActionBar a;

    public ViewPropertyAnimatorAdapterDelta(DecorToolbarActionBar khVar) {
        this.a = khVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        View view;
        DecorToolbarActionBar khVar = this.a;
        if (khVar.k && (view = khVar.f) != null) {
            view.setTranslationY(0.0f);
            this.a.c.setTranslationY(0.0f);
        }
        this.a.c.setVisibility(8);
        this.a.c.a(false);
        DecorToolbarActionBar khVar2 = this.a;
        khVar2.m = null;
        MenuItemClickDispatcherInterface knVar = khVar2.i;
        if (knVar != null) {
            knVar.a(khVar2.h);
            khVar2.h = null;
            khVar2.i = null;
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.a.b;
        if (actionBarOverlayLayout != null) {
            ViewCompatAccessibilityStatics.t(actionBarOverlayLayout);
        }
    }
}
