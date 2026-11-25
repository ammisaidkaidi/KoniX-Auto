package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.StaticHolderJi;
import defpackage.AppCompatDelegateImpl;
import defpackage.MenuBuilderImpl;
import defpackage.ChildHelperBucketCallback;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {
    public TypedValue b;
    public TypedValue c;
    public TypedValue d;
    public TypedValue e;
    public TypedValue f;
    public TypedValue g;
    public final Rect h;
    public StaticHolderJi i;

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        StaticHolderJi jiVar = this.i;
        if (jiVar != null) {
            AppCompatDelegateImpl jwVar = jiVar.a;
            ChildHelperBucketCallback osVar = jwVar.j;
            if (osVar != null) {
                osVar.g();
            }
            if (jwVar.m != null) {
                jwVar.g.getDecorView().removeCallbacks(jwVar.n);
                if (jwVar.m.isShowing()) {
                    try {
                        jwVar.m.dismiss();
                    } catch (IllegalArgumentException e) {
                    }
                }
                jwVar.m = null;
            }
            jwVar.z();
            MenuBuilderImpl loVar = jwVar.H(0).h;
            if (loVar != null) {
                loVar.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c6  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int measuredWidth;
        TypedValue typedValue;
        int dimension;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i5 = displayMetrics.widthPixels;
        int i6 = displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z2 = true;
        if (mode == Integer.MIN_VALUE) {
            TypedValue typedValue2 = i5 < i6 ? this.e : this.d;
            if (typedValue2 != null && typedValue2.type != 0) {
                int dimension2 = typedValue2.type == 5 ? (int) typedValue2.getDimension(displayMetrics) : typedValue2.type == 6 ? (int) typedValue2.getFraction(displayMetrics.widthPixels, displayMetrics.widthPixels) : 0;
                if (dimension2 > 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(dimension2 - (this.h.left + this.h.right), View.MeasureSpec.getSize(i)), 1073741824);
                    z = true;
                } else {
                    i3 = i;
                    z = false;
                }
                if (mode2 == Integer.MIN_VALUE) {
                    TypedValue typedValue3 = i5 < i6 ? this.f : this.g;
                    if (typedValue3 != null && typedValue3.type != 0) {
                        int dimension3 = typedValue3.type == 5 ? (int) typedValue3.getDimension(displayMetrics) : typedValue3.type == 6 ? (int) typedValue3.getFraction(displayMetrics.heightPixels, displayMetrics.heightPixels) : 0;
                        if (dimension3 > 0) {
                            i4 = View.MeasureSpec.makeMeasureSpec(Math.min(dimension3 - (this.h.top + this.h.bottom), View.MeasureSpec.getSize(i2)), 1073741824);
                            super.onMeasure(i3, i4);
                            measuredWidth = getMeasuredWidth();
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                            if (!z && mode == Integer.MIN_VALUE) {
                                typedValue = i5 >= i6 ? this.c : this.b;
                                if (typedValue != null && typedValue.type != 0) {
                                    dimension = typedValue.type != 5 ? (int) typedValue.getDimension(displayMetrics) : typedValue.type == 6 ? (int) typedValue.getFraction(displayMetrics.widthPixels, displayMetrics.widthPixels) : 0;
                                    if (dimension > 0) {
                                        dimension -= this.h.left + this.h.right;
                                    }
                                    if (measuredWidth >= dimension) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dimension, 1073741824);
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        super.onMeasure(makeMeasureSpec, i4);
                                        return;
                                    }
                                    return;
                                }
                            }
                            z2 = false;
                            if (z2) {
                            }
                        }
                    }
                }
                i4 = i2;
                super.onMeasure(i3, i4);
                measuredWidth = getMeasuredWidth();
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                if (!z) {
                    if (i5 >= i6) {
                    }
                    if (typedValue != null) {
                        if (typedValue.type != 5) {
                        }
                        if (dimension > 0) {
                        }
                        if (measuredWidth >= dimension) {
                        }
                        if (z2) {
                        }
                    }
                }
                z2 = false;
                if (z2) {
                }
            }
        }
        i3 = i;
        z = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        i4 = i2;
        super.onMeasure(i3, i4);
        measuredWidth = getMeasuredWidth();
        int makeMeasureSpec22 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (!z) {
        }
        z2 = false;
        if (z2) {
        }
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new Rect();
    }
}
