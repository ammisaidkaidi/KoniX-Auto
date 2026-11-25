package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public class it extends ViewGroup.MarginLayoutParams {
    public int a;

    public it() {
        super(-2, -2);
        this.a = 8388627;
    }

    public it(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ki.b);
        this.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public it(it itVar) {
        super((ViewGroup.MarginLayoutParams) itVar);
        this.a = 0;
        this.a = itVar.a;
    }

    public it(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.a = 0;
    }
}
