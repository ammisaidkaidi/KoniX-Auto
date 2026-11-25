package defpackage;

import android.content.Context;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuPopupHelperVariant extends MenuPopupHelper_ma {
    final /* synthetic */ MenuPopupHelper_mz d;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public MenuPopupHelperVariant(MenuPopupHelper_mz mzVar, Context context, SubMenuBuilder mkVar, View view) {
        super(context, mkVar, view, false);
        this.d = mzVar;
        if (!mkVar.k.o()) {
            View view2 = mzVar.g;
            this.a = view2 == null ? (View) mzVar.f : view2;
        }
        e(mzVar.l);
    }

    @Override // defpackage.MenuPopupHelper_ma
    protected final void c() {
        this.d.j = null;
        super.c();
    }
}
