package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ld implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ li a;

    public ld(li liVar) {
        this.a = liVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (!this.a.u() || this.a.b.size() <= 0 || ((lh) this.a.b.get(0)).a.o) {
            return;
        }
        View view = this.a.d;
        if (view == null || !view.isShown()) {
            this.a.k();
            return;
        }
        Iterator it = this.a.b.iterator();
        while (it.hasNext()) {
            ((lh) it.next()).a.s();
        }
    }
}
