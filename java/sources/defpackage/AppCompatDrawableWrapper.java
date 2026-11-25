package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatDrawableWrapper extends ConstraintLayoutLayoutParams_it {
    public int b;

    public AppCompatDrawableWrapper() {
        this.b = 0;
        this.a = 8388627;
    }

    public AppCompatDrawableWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
    }

    public AppCompatDrawableWrapper(ConstraintLayoutLayoutParams_it itVar) {
        super(itVar);
        this.b = 0;
    }

    public AppCompatDrawableWrapper(AppCompatDrawableWrapper sqVar) {
        super((ConstraintLayoutLayoutParams_it) sqVar);
        this.b = 0;
        this.b = sqVar.b;
    }

    public AppCompatDrawableWrapper(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = 0;
    }

    public AppCompatDrawableWrapper(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = 0;
        this.leftMargin = marginLayoutParams.leftMargin;
        this.topMargin = marginLayoutParams.topMargin;
        this.rightMargin = marginLayoutParams.rightMargin;
        this.bottomMargin = marginLayoutParams.bottomMargin;
    }
}
