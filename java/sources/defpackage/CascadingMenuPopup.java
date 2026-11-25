package defpackage;

import android.content.Context;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CascadingMenuPopup extends MenuPopupHelper_ma {
    final /* synthetic */ MenuPopupHelper_mz d;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public CascadingMenuPopup(MenuPopupHelper_mz mzVar, Context context, MenuBuilderImpl loVar, View view) {
        super(context, loVar, view, true);
        this.d = mzVar;
        this.b = 8388613;
        e(mzVar.l);
    }

    @Override // defpackage.MenuPopupHelper_ma
    protected final void c() {
        MenuBuilderImpl loVar = this.d.c;
        if (loVar != null) {
            loVar.close();
        }
        this.d.i = null;
        super.c();
    }
}
