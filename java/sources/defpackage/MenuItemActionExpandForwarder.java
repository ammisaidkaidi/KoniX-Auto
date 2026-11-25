package defpackage;

import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MenuItemActionExpandForwarder implements MenuItem.OnActionExpandListener {
    final /* synthetic */ MenuItemWrapperBase a;
    private final MenuItem.OnActionExpandListener b;

    public MenuItemActionExpandForwarder(MenuItemWrapperBase lxVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.a = lxVar;
        this.b = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.b.onMenuItemActionCollapse(this.a.a(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.b.onMenuItemActionExpand(this.a.a(menuItem));
    }
}
