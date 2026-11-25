package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class mh implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ mj a;

    public mh(mj mjVar) {
        this.a = mjVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (this.a.u()) {
            mj mjVar = this.a;
            if (mjVar.a.o) {
                return;
            }
            View view = mjVar.c;
            if (view == null || !view.isShown()) {
                this.a.k();
            } else {
                this.a.a.s();
            }
        }
    }
}
