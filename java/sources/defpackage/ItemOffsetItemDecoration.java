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
public final class ItemOffsetItemDecoration extends ItemTouchHelperCallbackBase {
    private final Drawable a;
    private int b;

    public ItemOffsetItemDecoration(Drawable drawable) {
        this.a = drawable;
    }

    @Override // defpackage.ItemTouchHelperCallbackBase
    public final void j(Rect rect, View view, RecyclerView recyclerView, RecyclerViewState roVar) {
        super.j(rect, view, recyclerView, roVar);
        if (recyclerView.b(view) != 0) {
            RecyclerViewLayoutManager raVar = recyclerView.l;
            raVar.getClass();
            int i = ((LinearLayoutManager) raVar).i;
            this.b = i;
            if (NavInstructionTypeEnum == 0) {
                rect.left = this.a.getIntrinsicWidth();
            } else {
                rect.top = this.a.getIntrinsicHeight();
            }
        }
    }

    @Override // defpackage.ItemTouchHelperCallbackBase
    public final void k(Canvas canvas, RecyclerView recyclerView) {
        int i = 0;
        if (this.b == 0) {
            int paddingTop = recyclerView.getPaddingTop() + ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_top_margin));
            int height = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_bottom_margin));
            RecyclerViewLayoutManager raVar = recyclerView.l;
            int ak = raVar.ak();
            while (NavInstructionTypeEnum < ak - 1) {
                View aw = raVar.aw(NavInstructionTypeEnum);
                int right = MediaDescriptionCompatCreator.getRight() + ((RecyclerViewLayoutParams) MediaDescriptionCompatCreator.getLayoutParams()).rightMargin;
                this.a.setBounds(right, paddingTop, this.a.getIntrinsicWidth() + right, height);
                this.a.draw(canvas);
                i++;
            }
            return;
        }
        int paddingLeft = recyclerView.getPaddingLeft() + ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_start_margin));
        int width = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_end_margin));
        RecyclerViewLayoutManager raVar2 = recyclerView.l;
        int ak2 = raVar2.ak();
        while (NavInstructionTypeEnum < ak2 - 1) {
            View aw2 = raVar2.aw(NavInstructionTypeEnum);
            int bottom = aw2.getBottom() + ((RecyclerViewLayoutParams) aw2.getLayoutParams()).bottomMargin;
            this.a.setBounds(paddingLeft, bottom, width, this.a.getIntrinsicHeight() + bottom);
            this.a.draw(canvas);
            i++;
        }
    }
}
