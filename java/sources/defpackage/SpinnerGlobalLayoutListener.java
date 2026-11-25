package defpackage;

import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SpinnerGlobalLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ AppCompatSpinner a;

    public SpinnerGlobalLayoutListener(AppCompatSpinner okVar) {
        this.a = okVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (!this.a.b.u()) {
            this.a.b();
        }
        ViewTreeObserver viewTreeObserver = this.a.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        }
    }
}
