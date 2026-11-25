package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class apl extends qx {
    private final Drawable a;
    private int b;

    public apl(Drawable drawable) {
        this.a = drawable;
    }

    @Override // defpackage.qx
    public final void j(Rect rect, View view, RecyclerView recyclerView, ro roVar) {
        super.j(rect, view, recyclerView, roVar);
        if (recyclerView.b(view) != 0) {
            ra raVar = recyclerView.l;
            raVar.getClass();
            int i = ((LinearLayoutManager) raVar).i;
            this.b = i;
            if (i == 0) {
                rect.left = this.a.getIntrinsicWidth();
            } else {
                rect.top = this.a.getIntrinsicHeight();
            }
        }
    }

    @Override // defpackage.qx
    public final void k(Canvas canvas, RecyclerView recyclerView) {
        int i = 0;
        if (this.b == 0) {
            int paddingTop = recyclerView.getPaddingTop() + ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_top_margin));
            int height = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_bottom_margin));
            ra raVar = recyclerView.l;
            int ak = raVar.ak();
            while (i < ak - 1) {
                View aw = raVar.aw(i);
                int right = aw.getRight() + ((rb) aw.getLayoutParams()).rightMargin;
                this.a.setBounds(right, paddingTop, this.a.getIntrinsicWidth() + right, height);
                this.a.draw(canvas);
                i++;
            }
            return;
        }
        int paddingLeft = recyclerView.getPaddingLeft() + ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_start_margin));
        int width = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_end_margin));
        ra raVar2 = recyclerView.l;
        int ak2 = raVar2.ak();
        while (i < ak2 - 1) {
            View aw2 = raVar2.aw(i);
            int bottom = aw2.getBottom() + ((rb) aw2.getLayoutParams()).bottomMargin;
            this.a.setBounds(paddingLeft, bottom, width, this.a.getIntrinsicHeight() + bottom);
            this.a.draw(canvas);
            i++;
        }
    }
}
