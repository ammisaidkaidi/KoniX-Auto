package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ry extends re {
    boolean a = false;
    final /* synthetic */ rc b;

    public ry(rc rcVar) {
        this.b = rcVar;
    }

    @Override // defpackage.re
    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        this.a = true;
    }

    @Override // defpackage.re
    public final void b(int i) {
        if (i == 0 && this.a) {
            this.a = false;
            this.b.a();
        }
    }
}
