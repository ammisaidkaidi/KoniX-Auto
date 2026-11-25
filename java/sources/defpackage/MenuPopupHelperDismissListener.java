package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MenuPopupHelperDismissListener implements MenuPopupCallbackInterface {
    final /* synthetic */ MenuPopupHelper_mz a;

    public MenuPopupHelperDismissListener(MenuPopupHelper_mz mzVar) {
        this.a = mzVar;
    }

    @Override // defpackage.MenuPopupCallbackInterface
    public final void a(MenuBuilderImpl loVar, boolean z) {
        if (loVar instanceof SubMenuBuilder) {
            loVar.a().i(false);
        }
        MenuPopupCallbackInterface mbVar = this.a.e;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.MenuPopupCallbackInterface
    public final boolean b(MenuBuilderImpl loVar) {
        MenuPopupHelper_mz mzVar = this.a;
        if (loVar == mzVar.c) {
            return false;
        }
        MenuItemImpl lrVar = ((SubMenuBuilder) loVar).k;
        MenuPopupCallbackInterface mbVar = mzVar.e;
        if (mbVar != null) {
            return mbVar.b(loVar);
        }
        return false;
    }
}
