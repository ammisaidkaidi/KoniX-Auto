package defpackage;

import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListPopupGlobalLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ SpinnerListPopupWindow a;

    public ListPopupGlobalLayoutListener(SpinnerListPopupWindow ohVar) {
        this.a = ohVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        SpinnerListPopupWindow ohVar = this.a;
        AppCompatSpinner okVar = ohVar.d;
        if (!ViewCompatAccessibilityStatics.F(okVar) || !okVar.getGlobalVisibleRect(ohVar.c)) {
            this.a.k();
        } else {
            this.a.n();
            super/*qf*/.s();
        }
    }
}
