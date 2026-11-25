package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ph extends re {
    final /* synthetic */ pk a;

    public ph(pk pkVar) {
        this.a = pkVar;
    }

    @Override // defpackage.re
    public final void a(RecyclerView recyclerView, int i, int i2) {
        pk pkVar = this.a;
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        int computeVerticalScrollRange = pkVar.l.computeVerticalScrollRange();
        int i3 = pkVar.k;
        pkVar.m = computeVerticalScrollRange - i3 > 0 && i3 >= pkVar.a;
        int computeHorizontalScrollRange = pkVar.l.computeHorizontalScrollRange();
        int i4 = pkVar.j;
        boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= pkVar.a;
        pkVar.n = z;
        if (pkVar.m) {
            float f = i3;
            pkVar.e = (int) ((f * (computeVerticalScrollOffset + (f / 2.0f))) / computeVerticalScrollRange);
            pkVar.d = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        } else if (!z) {
            if (pkVar.o != 0) {
                pkVar.b(0);
                return;
            }
            return;
        }
        if (pkVar.n) {
            float f2 = i4;
            pkVar.h = (int) ((f2 * (computeHorizontalScrollOffset + (f2 / 2.0f))) / computeHorizontalScrollRange);
            pkVar.g = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        int i5 = pkVar.o;
        if (i5 == 0 || i5 == 1) {
            pkVar.b(1);
        }
    }
}
