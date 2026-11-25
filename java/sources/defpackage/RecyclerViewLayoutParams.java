package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public class RecyclerViewLayoutParams extends ViewGroup.MarginLayoutParams {
    public RecyclerViewViewHolder c;
    public final Rect d;
    public boolean e;
    boolean f;

    public RecyclerViewLayoutParams(int i, int i2) {
        super(i, i2);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public final int a() {
        return this.c.getLayoutPosition();
    }

    public final boolean b() {
        return this.c.isUpdated();
    }

    public final boolean c() {
        return this.c.isRemoved();
    }

    public RecyclerViewLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public RecyclerViewLayoutParams(RecyclerViewLayoutParams rbVar) {
        super((ViewGroup.LayoutParams) rbVar);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public RecyclerViewLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public RecyclerViewLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }
}
