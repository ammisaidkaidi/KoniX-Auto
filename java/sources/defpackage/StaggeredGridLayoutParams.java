package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StaggeredGridLayoutParams extends RecyclerViewLayoutParams {
    public StaggeredGridLazySpanLookup a;
    public boolean b;

    public StaggeredGridLayoutParams(int i, int i2) {
        super(i, i2);
    }

    public StaggeredGridLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StaggeredGridLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }

    public StaggeredGridLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
    }
}
