package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public class rb extends ViewGroup.MarginLayoutParams {
    public rr c;
    public final Rect d;
    public boolean e;
    boolean f;

    public rb(int i, int i2) {
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

    public rb(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public rb(rb rbVar) {
        super((ViewGroup.LayoutParams) rbVar);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public rb(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }

    public rb(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.d = new Rect();
        this.e = true;
        this.f = false;
    }
}
