package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GridLayoutManagerLayoutParams extends RecyclerViewLayoutParams {
    public int a;
    public int b;

    public GridLayoutManagerLayoutParams(int i, int i2) {
        super(i, i2);
        this.a = -1;
        this.b = 0;
    }

    public GridLayoutManagerLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = -1;
        this.b = 0;
    }

    public GridLayoutManagerLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.a = -1;
        this.b = 0;
    }

    public GridLayoutManagerLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.a = -1;
        this.b = 0;
    }
}
