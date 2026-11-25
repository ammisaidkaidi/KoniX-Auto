package defpackage;

import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
class ic extends ib {
    private eh c;

    public ic(ih ihVar, WindowInsets windowInsets) {
        super(ihVar, windowInsets);
        this.c = null;
    }

    @Override // defpackage.ig
    public final eh g() {
        if (this.c == null) {
            this.c = eh.b(this.a.getStableInsetLeft(), this.a.getStableInsetTop(), this.a.getStableInsetRight(), this.a.getStableInsetBottom());
        }
        return this.c;
    }

    @Override // defpackage.ig
    public final ih h() {
        return ih.k(this.a.consumeStableInsets());
    }

    @Override // defpackage.ig
    public final ih i() {
        return ih.k(this.a.consumeSystemWindowInsets());
    }

    @Override // defpackage.ig
    public void j(eh ehVar) {
        this.c = ehVar;
    }

    @Override // defpackage.ig
    public final boolean k() {
        return this.a.isConsumed();
    }
}
