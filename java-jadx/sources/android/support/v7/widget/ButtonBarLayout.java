package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.embedded.projection.R;
import defpackage.hs;
import defpackage.ki;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {
    private boolean a;
    private int b;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ki.k);
        hs.L(this, context, ki.k, attributeSet, obtainStyledAttributes, 0);
        this.a = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }

    private final int a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private final void b(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(true != z ? 80 : 8388613);
        View findViewById = findViewById(R.id.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(true != z ? 4 : 8);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    private final boolean c() {
        return getOrientation() == 1;
    }

    @Override // android.view.View
    public final int getMinimumHeight() {
        return Math.max(0, super.getMinimumHeight());
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x004d, code lost:
    
        if (r1 != false) goto L24;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        int i4 = 0;
        if (this.a) {
            if (size > this.b && c()) {
                b(false);
            }
            this.b = size;
        }
        if (c() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(i3, i2);
        if (this.a && !c() && (getMeasuredWidthAndState() & (-16777216)) == 16777216) {
            b(true);
        }
        super.onMeasure(i, i2);
        int a = a(0);
        if (a >= 0) {
            View childAt = getChildAt(a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            i4 = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (c()) {
                int a2 = a(a + 1);
                if (a2 >= 0) {
                    i4 += getChildAt(a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 += getPaddingBottom();
            }
        }
        if (hs.d(this) != i4) {
            setMinimumHeight(i4);
        }
    }
}
