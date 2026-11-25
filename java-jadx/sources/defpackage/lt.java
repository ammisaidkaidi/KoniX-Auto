package defpackage;

import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class lt extends ls implements ActionProvider.VisibilityListener {
    private lq c;

    public lt(ActionProvider actionProvider) {
        super(actionProvider);
    }

    @Override // defpackage.gi
    public final View b(MenuItem menuItem) {
        return this.b.onCreateActionView(menuItem);
    }

    @Override // defpackage.gi
    public final boolean e() {
        return this.b.isVisible();
    }

    @Override // defpackage.gi
    public final boolean g() {
        return this.b.overridesItemVisibility();
    }

    @Override // defpackage.gi
    public final void h(lq lqVar) {
        this.c = lqVar;
        this.b.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        lq lqVar = this.c;
        if (lqVar != null) {
            lqVar.a.j.C();
        }
    }
}
