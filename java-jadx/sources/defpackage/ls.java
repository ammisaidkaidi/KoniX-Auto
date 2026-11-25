package defpackage;

import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
class ls extends gi {
    final ActionProvider b;

    public ls(ActionProvider actionProvider) {
        this.b = actionProvider;
    }

    @Override // defpackage.gi
    public final View a() {
        return this.b.onCreateActionView();
    }

    @Override // defpackage.gi
    public final void c(SubMenu subMenu) {
        this.b.onPrepareSubMenu(subMenu);
    }

    @Override // defpackage.gi
    public final boolean d() {
        return this.b.hasSubMenu();
    }

    @Override // defpackage.gi
    public final boolean f() {
        return this.b.onPerformDefaultAction();
    }
}
