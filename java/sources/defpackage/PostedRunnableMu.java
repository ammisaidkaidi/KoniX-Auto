package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PostedRunnableMu implements Runnable {
    final /* synthetic */ MenuPopupHelper_mz a;
    private final CascadingMenuPopup b;

    public PostedRunnableMu(MenuPopupHelper_mz mzVar, CascadingMenuPopup mxVar) {
        this.a = mzVar;
        this.b = mxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MenuPresenterCallbackInterface lmVar;
        MenuBuilderImpl loVar = this.a.c;
        if (loVar != null && (lmVar = loVar.b) != null) {
            lmVar.I();
        }
        View view = (View) this.a.f;
        if (view != null && view.getWindowToken() != null && this.b.h()) {
            this.a.i = this.b;
        }
        this.a.k = null;
    }
}
