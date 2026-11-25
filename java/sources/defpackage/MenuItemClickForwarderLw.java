package defpackage;

import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MenuItemClickForwarderLw implements MenuItem.OnMenuItemClickListener {
    final /* synthetic */ MenuItemWrapperBase a;
    private final MenuItem.OnMenuItemClickListener b;

    public MenuItemClickForwarderLw(MenuItemWrapperBase lxVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.a = lxVar;
        this.b = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.b.onMenuItemClick(this.a.a(menuItem));
    }
}
