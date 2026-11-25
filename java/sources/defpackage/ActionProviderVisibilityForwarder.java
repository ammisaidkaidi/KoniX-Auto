package defpackage;

import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ActionProviderVisibilityForwarder extends SupportActionProviderSub implements ActionProvider.VisibilityListener {
    private SimpleHolderLq c;

    public ActionProviderVisibilityForwarder(ActionProvider actionProvider) {
        super(actionProvider);
    }

    @Override // defpackage.SupportActionProvider
    public final View b(MenuItem menuItem) {
        return this.b.onCreateActionView(menuItem);
    }

    @Override // defpackage.SupportActionProvider
    public final boolean e() {
        return this.b.isVisible();
    }

    @Override // defpackage.SupportActionProvider
    public final boolean g() {
        return this.b.overridesItemVisibility();
    }

    @Override // defpackage.SupportActionProvider
    public final void h(SimpleHolderLq lqVar) {
        this.c = lqVar;
        this.b.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        SimpleHolderLq lqVar = this.c;
        if (lqVar != null) {
            lqVar.a.j.C();
        }
    }
}
