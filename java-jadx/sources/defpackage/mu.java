package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class mu implements Runnable {
    final /* synthetic */ mz a;
    private final mx b;

    public mu(mz mzVar, mx mxVar) {
        this.a = mzVar;
        this.b = mxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lm lmVar;
        lo loVar = this.a.c;
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
