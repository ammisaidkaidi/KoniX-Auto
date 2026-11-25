package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SubMenuBuilder extends MenuBuilderImpl implements SubMenu {
    public final MenuBuilderImpl j;
    public final MenuItemImpl k;

    public SubMenuBuilder(Context context, MenuBuilderImpl loVar, MenuItemImpl lrVar) {
        super(context);
        this.j = loVar;
        this.k = lrVar;
    }

    @Override // defpackage.MenuBuilderImpl
    public final MenuBuilderImpl a() {
        return this.j.a();
    }

    @Override // defpackage.MenuBuilderImpl
    public final String d() {
        int i = this.k.a;
        if (NavInstructionTypeEnum == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.k;
    }

    @Override // defpackage.MenuBuilderImpl
    public final void p(MenuPresenterCallbackInterface lmVar) {
        this.j.p(lmVar);
    }

    @Override // defpackage.MenuBuilderImpl, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.j.setGroupDividerEnabled(IcuMessageFormat);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        super.q(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        super.q(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        super.q(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.k.setIcon(NavInstructionTypeEnum);
        return this;
    }

    @Override // defpackage.MenuBuilderImpl, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.j.setQwertyMode(IcuMessageFormat);
    }

    @Override // defpackage.MenuBuilderImpl
    public final boolean t(MenuItemImpl lrVar) {
        return this.j.t(lrVar);
    }

    @Override // defpackage.MenuBuilderImpl
    public final boolean u(MenuBuilderImpl loVar, MenuItem menuItem) {
        return super.u(loVar, menuItem) || this.j.u(loVar, menuItem);
    }

    @Override // defpackage.MenuBuilderImpl
    public final boolean v(MenuItemImpl lrVar) {
        return this.j.v(lrVar);
    }

    @Override // defpackage.MenuBuilderImpl
    public final boolean w() {
        return this.j.w();
    }

    @Override // defpackage.MenuBuilderImpl
    public final boolean x() {
        return this.j.x();
    }

    @Override // defpackage.MenuBuilderImpl
    public final boolean y() {
        return this.j.y();
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        super.q(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        super.q(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.k.setIcon(drawable);
        return this;
    }
}
