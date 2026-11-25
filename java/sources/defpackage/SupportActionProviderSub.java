package defpackage;

import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
class SupportActionProviderSub extends SupportActionProvider {
    final ActionProvider b;

    public SupportActionProviderSub(ActionProvider actionProvider) {
        this.b = actionProvider;
    }

    @Override // defpackage.SupportActionProvider
    public final View a() {
        return this.b.onCreateActionView();
    }

    @Override // defpackage.SupportActionProvider
    public final void c(SubMenu subMenu) {
        this.b.onPrepareSubMenu(subMenu);
    }

    @Override // defpackage.SupportActionProvider
    public final boolean d() {
        return this.b.hasSubMenu();
    }

    @Override // defpackage.SupportActionProvider
    public final boolean f() {
        return this.b.onPerformDefaultAction();
    }
}
