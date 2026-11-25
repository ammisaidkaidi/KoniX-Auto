package defpackage;

import android.content.Context;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class mt extends ma {
    final /* synthetic */ mz d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mt(mz mzVar, Context context, mk mkVar, View view) {
        super(context, mkVar, view, false);
        this.d = mzVar;
        if (!mkVar.k.o()) {
            View view2 = mzVar.g;
            this.a = view2 == null ? (View) mzVar.f : view2;
        }
        e(mzVar.l);
    }

    @Override // defpackage.ma
    protected final void c() {
        this.d.j = null;
        super.c();
    }
}
