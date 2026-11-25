package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class acw extends qx {
    public Drawable a;
    public int b;
    public boolean c = true;
    final /* synthetic */ ada d;

    public acw(ada adaVar) {
        this.d = adaVar;
    }

    private final boolean a(View view, RecyclerView recyclerView) {
        rr g = recyclerView.g(view);
        if (!(g instanceof ado) || !((ado) g).d) {
            return false;
        }
        boolean z = this.c;
        int indexOfChild = recyclerView.indexOfChild(view);
        if (indexOfChild >= recyclerView.getChildCount() - 1) {
            return z;
        }
        rr g2 = recyclerView.g(recyclerView.getChildAt(indexOfChild + 1));
        return (g2 instanceof ado) && ((ado) g2).c;
    }

    @Override // defpackage.qx
    public final void f(Canvas canvas, RecyclerView recyclerView) {
        if (this.a == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (a(childAt, recyclerView)) {
                int y = ((int) childAt.getY()) + childAt.getHeight();
                this.a.setBounds(0, y, width, this.b + y);
                this.a.draw(canvas);
            }
        }
    }

    @Override // defpackage.qx
    public final void j(Rect rect, View view, RecyclerView recyclerView, ro roVar) {
        if (a(view, recyclerView)) {
            rect.bottom = this.b;
        }
    }
}
