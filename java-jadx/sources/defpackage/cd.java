package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cd implements View.OnAttachStateChangeListener {
    final /* synthetic */ cx a;
    final /* synthetic */ ce b;

    public cd(ce ceVar, cx cxVar) {
        this.b = ceVar;
        this.a = cxVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        cx cxVar = this.a;
        br brVar = cxVar.c;
        cxVar.d();
        dm.b((ViewGroup) brVar.P.getParent(), this.b.a).c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
