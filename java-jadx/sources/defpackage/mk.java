package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class mk extends lo implements SubMenu {
    public final lo j;
    public final lr k;

    public mk(Context context, lo loVar, lr lrVar) {
        super(context);
        this.j = loVar;
        this.k = lrVar;
    }

    @Override // defpackage.lo
    public final lo a() {
        return this.j.a();
    }

    @Override // defpackage.lo
    public final String d() {
        int i = this.k.a;
        if (i == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.k;
    }

    @Override // defpackage.lo
    public final void p(lm lmVar) {
        this.j.p(lmVar);
    }

    @Override // defpackage.lo, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.j.setGroupDividerEnabled(z);
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
        this.k.setIcon(i);
        return this;
    }

    @Override // defpackage.lo, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.j.setQwertyMode(z);
    }

    @Override // defpackage.lo
    public final boolean t(lr lrVar) {
        return this.j.t(lrVar);
    }

    @Override // defpackage.lo
    public final boolean u(lo loVar, MenuItem menuItem) {
        return super.u(loVar, menuItem) || this.j.u(loVar, menuItem);
    }

    @Override // defpackage.lo
    public final boolean v(lr lrVar) {
        return this.j.v(lrVar);
    }

    @Override // defpackage.lo
    public final boolean w() {
        return this.j.w();
    }

    @Override // defpackage.lo
    public final boolean x() {
        return this.j.x();
    }

    @Override // defpackage.lo
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
