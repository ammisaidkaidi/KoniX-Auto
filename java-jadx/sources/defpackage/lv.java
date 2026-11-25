package defpackage;

import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class lv implements MenuItem.OnActionExpandListener {
    final /* synthetic */ lx a;
    private final MenuItem.OnActionExpandListener b;

    public lv(lx lxVar, MenuItem.OnActionExpandListener onActionExpandListener) {
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
