package defpackage;

import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class lw implements MenuItem.OnMenuItemClickListener {
    final /* synthetic */ lx a;
    private final MenuItem.OnMenuItemClickListener b;

    public lw(lx lxVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.a = lxVar;
        this.b = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.b.onMenuItemClick(this.a.a(menuItem));
    }
}
