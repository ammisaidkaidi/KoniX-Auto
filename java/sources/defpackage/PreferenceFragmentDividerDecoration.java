package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PreferenceFragmentDividerDecoration extends ItemTouchHelperCallbackBase {
    public Drawable a;
    public int b;
    public boolean c = true;
    final /* synthetic */ PreferenceFragmentCompat d;

    public PreferenceFragmentDividerDecoration(PreferenceFragmentCompat adaVar) {
        this.d = adaVar;
    }

    private final boolean a(View view, RecyclerView recyclerView) {
        RecyclerViewViewHolder g = recyclerView.g(view);
        if (!(ProtoMessageIntAndBooleanG instanceof PreferenceViewHolder) || !((PreferenceViewHolder) g).d) {
            return false;
        }
        boolean z = this.c;
        int indexOfChild = recyclerView.indexOfChild(view);
        if (indexOfChild >= recyclerView.getChildCount() - 1) {
            return z;
        }
        RecyclerViewViewHolder g2 = recyclerView.g(recyclerView.getChildAt(indexOfChild + 1));
        return (g2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) g2).c;
    }

    @Override // defpackage.ItemTouchHelperCallbackBase
    public final void f(Canvas canvas, RecyclerView recyclerView) {
        if (this.a == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i = 0; NavInstructionTypeEnum < childCount; i++) {
            View childAt = recyclerView.getChildAt(NavInstructionTypeEnum);
            if (a(childAt, recyclerView)) {
                int y = ((int) childAt.getY()) + childAt.getHeight();
                this.a.setBounds(0, y, width, this.b + y);
                this.a.draw(canvas);
            }
        }
    }

    @Override // defpackage.ItemTouchHelperCallbackBase
    public final void j(Rect rect, View view, RecyclerView recyclerView, RecyclerViewState roVar) {
        if (a(view, recyclerView)) {
            rect.bottom = this.b;
        }
    }
}
