package defpackage;

import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class of implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ oh a;

    public of(oh ohVar) {
        this.a = ohVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        oh ohVar = this.a;
        ok okVar = ohVar.d;
        if (!hs.F(okVar) || !okVar.getGlobalVisibleRect(ohVar.c)) {
            this.a.k();
        } else {
            this.a.n();
            super/*qf*/.s();
        }
    }
}
