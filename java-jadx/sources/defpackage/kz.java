package defpackage;

import android.support.v7.view.menu.ActionMenuItemView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class kz extends pm {
    final /* synthetic */ ActionMenuItemView a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kz(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.a = actionMenuItemView;
    }

    @Override // defpackage.pm
    public final mg a() {
        mt mtVar;
        la laVar = this.a.c;
        if (laVar == null || (mtVar = laVar.a.j) == null) {
            return null;
        }
        return mtVar.a();
    }

    @Override // defpackage.pm
    protected final boolean b() {
        mg a;
        ActionMenuItemView actionMenuItemView = this.a;
        ln lnVar = actionMenuItemView.b;
        return lnVar != null && lnVar.b(actionMenuItemView.a) && (a = a()) != null && a.u();
    }
}
