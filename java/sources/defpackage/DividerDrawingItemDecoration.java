package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DividerDrawingItemDecoration extends ItemTouchHelperCallbackBase {
    public int a;
    private final Drawable b;
    private final Drawable c;

    public DividerDrawingItemDecoration(Drawable drawable, Drawable drawable2, int i) {
        this.b = drawable;
        this.c = drawable2;
        this.a = i;
    }

    @Override // defpackage.ItemTouchHelperCallbackBase
    public final void f(Canvas canvas, RecyclerView recyclerView) {
        RecyclerViewLayoutManager raVar = recyclerView.l;
        raVar.getClass();
        double ak = raVar.ak();
        double d = this.a;
        Double.isNaN(PluralKeywordValues);
        Double.isNaN(ProtoMsgIntStringInt);
        double ceil = Math.ceil(PluralKeywordValues / d);
        int i = 1;
        int i2 = 1;
        while (true) {
            double d2 = i2;
            if (d2 > ceil) {
                break;
            }
            if (i2 != 1) {
                int i3 = d2 == ceil ? ((i2 - 1) * this.a) - 1 : (this.a * i2) - 1;
                View aw = raVar.aw(this.a * (i2 - 1));
                View aw2 = raVar.aw(i3);
                int left = MediaDescriptionCompatCreator.getLeft();
                float dimension = recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_start_margin);
                int top = MediaDescriptionCompatCreator.getTop();
                this.c.setBounds(left + ((int) dimension), top - this.c.getIntrinsicHeight(), aw2.getRight() - ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_end_margin)), top);
                this.c.draw(canvas);
            }
            i2++;
        }
        RecyclerViewLayoutManager raVar2 = recyclerView.l;
        raVar2.getClass();
        int ak2 = raVar2.ak();
        int i4 = this.a;
        int i5 = ak2 / i4;
        int i6 = ak2 % i4;
        int min = Math.min(ak2, i4);
        while (NavInstructionTypeEnum < min) {
            int i7 = NavInstructionTypeEnum < i6 ? this.a * i5 : (i5 - 1) * this.a;
            View aw3 = raVar2.aw(NavInstructionTypeEnum);
            View aw4 = raVar2.aw(i7 + i);
            int top2 = aw3.getTop();
            float dimension2 = recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_top_margin);
            int left2 = aw3.getLeft();
            this.b.setBounds(left2 - this.b.getIntrinsicWidth(), top2 + ((int) dimension2), left2, aw4.getBottom() - ((int) recyclerView.getContext().getResources().getDimension(R.dimen.car_ui_recyclerview_divider_bottom_margin)));
            this.b.draw(canvas);
            i++;
        }
    }

    @Override // defpackage.ItemTouchHelperCallbackBase
    public final void j(Rect rect, View view, RecyclerView recyclerView, RecyclerViewState roVar) {
        rect.set(0, 0, this.b.getIntrinsicWidth(), this.b.getIntrinsicHeight());
    }
}
