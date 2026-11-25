package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class qu {
    public int a;
    public int b;

    public final void a(rr rrVar) {
        View view = rrVar.itemView;
        this.a = view.getLeft();
        this.b = view.getTop();
        view.getRight();
        view.getBottom();
    }

    public final int b() {
        return this.b | this.a;
    }

    public final void c(int i, int i2) {
        if (i2 == 1) {
            this.a = i;
        } else {
            this.b = i;
        }
    }
}
