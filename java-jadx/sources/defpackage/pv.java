package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public class pv extends ViewGroup {
    private boolean a;
    private int b;
    private int c;
    private int d;
    public int e;
    public Drawable f;
    public int g;
    private int h;
    private float i;
    private boolean j;
    private int[] k;
    private int[] l;
    private int m;
    private int n;
    private int o;

    public pv(Context context) {
        this(context, null);
    }

    private static void a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof pu;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public pu generateDefaultLayoutParams() {
        int i = this.d;
        if (i == 0) {
            return new pu(-2);
        }
        if (i == 1) {
            return new pu(-1);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: e */
    public pu generateLayoutParams(AttributeSet attributeSet) {
        return new pu(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public pu generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new pu(layoutParams);
    }

    @Override // android.view.View
    public final int getBaseline() {
        int i;
        if (this.b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.b;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.c;
        if (this.d == 1 && (i = this.e & 112) != 48) {
            switch (i) {
                case 16:
                    i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.h) / 2;
                    break;
                case 80:
                    i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.h;
                    break;
            }
        }
        return i3 + ((pu) childAt.getLayoutParams()).topMargin + baseline;
    }

    final void n(Canvas canvas, int i) {
        this.f.setBounds(getPaddingLeft() + this.o, i, (getWidth() - getPaddingRight()) - this.o, this.m + i);
        this.f.draw(canvas);
    }

    final void o(Canvas canvas, int i) {
        this.f.setBounds(i, getPaddingTop() + this.o, this.g + i, (getHeight() - getPaddingBottom()) - this.o);
        this.f.draw(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.support.v7.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.support.v7.widget.LinearLayoutCompat");
    }

    protected final boolean p(int i) {
        if (i == 0) {
            return (this.n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.n & 4) != 0;
        }
        if ((this.n & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public final void q() {
        this.a = false;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public pv(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public pv(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
        this.b = -1;
        this.c = 0;
        this.e = 8388659;
        sm q = sm.q(context, attributeSet, ki.m, i);
        hs.L(this, context, ki.m, attributeSet, q.b, i);
        int c = q.c(1, -1);
        if (c >= 0 && this.d != c) {
            this.d = c;
            requestLayout();
        }
        int c2 = q.c(0, -1);
        if (c2 >= 0 && this.e != c2) {
            c2 = (8388615 & c2) == 0 ? c2 | 8388611 : c2;
            this.e = (c2 & 112) == 0 ? c2 | 48 : c2;
            requestLayout();
        }
        if (!q.o(2, true)) {
            q();
        }
        this.i = q.b.getFloat(4, -1.0f);
        this.b = q.c(3, -1);
        this.j = q.o(7, false);
        Drawable h = q.h(5);
        if (h != this.f) {
            this.f = h;
            if (h != null) {
                this.g = h.getIntrinsicWidth();
                this.m = h.getIntrinsicHeight();
            } else {
                this.g = 0;
                this.m = 0;
            }
            setWillNotDraw(h == null);
            requestLayout();
        }
        this.n = q.c(8, 0);
        this.o = q.b(6, 0);
        q.n();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int left;
        if (this.f == null) {
            return;
        }
        int i = 0;
        if (this.d == 1) {
            int childCount = getChildCount();
            while (i < childCount) {
                View childAt = getChildAt(i);
                if (childAt != null && childAt.getVisibility() != 8 && p(i)) {
                    n(canvas, (childAt.getTop() - ((pu) childAt.getLayoutParams()).topMargin) - this.m);
                }
                i++;
            }
            if (p(childCount)) {
                View childAt2 = getChildAt(childCount - 1);
                n(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.m : childAt2.getBottom() + ((pu) childAt2.getLayoutParams()).bottomMargin);
                return;
            }
            return;
        }
        int childCount2 = getChildCount();
        boolean b = tb.b(this);
        while (i < childCount2) {
            View childAt3 = getChildAt(i);
            if (childAt3 != null && childAt3.getVisibility() != 8 && p(i)) {
                pu puVar = (pu) childAt3.getLayoutParams();
                o(canvas, b ? childAt3.getRight() + puVar.rightMargin : (childAt3.getLeft() - puVar.leftMargin) - this.g);
            }
            i++;
        }
        if (p(childCount2)) {
            View childAt4 = getChildAt(childCount2 - 1);
            if (childAt4 == null) {
                left = b ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.g;
            } else {
                pu puVar2 = (pu) childAt4.getLayoutParams();
                left = b ? (childAt4.getLeft() - puVar2.leftMargin) - this.g : childAt4.getRight() + puVar2.rightMargin;
            }
            o(canvas, left);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0186  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int paddingTop;
        int i15;
        int i16 = 8;
        if (this.d == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i17 = i3 - i;
            int paddingRight = i17 - getPaddingRight();
            int paddingRight2 = (i17 - paddingLeft2) - getPaddingRight();
            int childCount = getChildCount();
            int i18 = this.e;
            int i19 = 8388615 & i18;
            switch (i18 & 112) {
                case 16:
                    paddingTop = getPaddingTop() + (((i4 - i2) - this.h) / 2);
                    break;
                case 80:
                    paddingTop = ((getPaddingTop() + i4) - i2) - this.h;
                    break;
                default:
                    paddingTop = getPaddingTop();
                    break;
            }
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt = getChildAt(i20);
                if (childAt != null && childAt.getVisibility() != 8) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    pu puVar = (pu) childAt.getLayoutParams();
                    int i21 = puVar.gravity;
                    if (i21 < 0) {
                        i21 = i19;
                    }
                    switch (Gravity.getAbsoluteGravity(i21, hs.c(this)) & 7) {
                        case 1:
                            i15 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft2) + puVar.leftMargin) - puVar.rightMargin;
                            break;
                        case 5:
                            i15 = (paddingRight - measuredWidth) - puVar.rightMargin;
                            break;
                        default:
                            i15 = puVar.leftMargin + paddingLeft2;
                            break;
                    }
                    if (p(i20)) {
                        paddingTop += this.m;
                    }
                    int i22 = paddingTop + puVar.topMargin;
                    a(childAt, i15, i22, measuredWidth, measuredHeight);
                    paddingTop = i22 + measuredHeight + puVar.bottomMargin;
                }
            }
            return;
        }
        boolean b = tb.b(this);
        int paddingTop2 = getPaddingTop();
        int i23 = i4 - i2;
        int paddingBottom = i23 - getPaddingBottom();
        int paddingBottom2 = (i23 - paddingTop2) - getPaddingBottom();
        int childCount2 = getChildCount();
        int i24 = this.e;
        int i25 = i24 & 112;
        boolean z2 = this.a;
        int[] iArr = this.k;
        int[] iArr2 = this.l;
        switch (Gravity.getAbsoluteGravity(8388615 & i24, hs.c(this))) {
            case 1:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.h) / 2);
                break;
            case 5:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.h;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (b) {
            i5 = childCount2 - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i26 = 0;
        while (i26 < childCount2) {
            int i27 = i5 + (i6 * i26);
            View childAt2 = getChildAt(i27);
            if (childAt2 == null) {
                i7 = i5;
                i8 = paddingBottom;
                i9 = childCount2;
                i10 = i6;
                i11 = i25;
            } else {
                i7 = i5;
                if (childAt2.getVisibility() != i16) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight2 = childAt2.getMeasuredHeight();
                    i9 = childCount2;
                    pu puVar2 = (pu) childAt2.getLayoutParams();
                    if (z2) {
                        i10 = i6;
                        i11 = i25;
                        if (puVar2.height != -1) {
                            i12 = childAt2.getBaseline();
                            i13 = puVar2.gravity;
                            if (i13 < 0) {
                                i13 = i11;
                            }
                            switch (i13 & 112) {
                                case 16:
                                    i8 = paddingBottom;
                                    i14 = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop2) + puVar2.topMargin) - puVar2.bottomMargin;
                                    break;
                                case 48:
                                    i8 = paddingBottom;
                                    i14 = paddingTop2 + puVar2.topMargin;
                                    if (i12 != -1) {
                                        i14 += iArr[1] - i12;
                                    }
                                    break;
                                case 80:
                                    i8 = paddingBottom;
                                    i14 = (paddingBottom - measuredHeight2) - puVar2.bottomMargin;
                                    if (i12 != -1) {
                                        i14 -= iArr2[2] - (childAt2.getMeasuredHeight() - i12);
                                    }
                                    break;
                                default:
                                    i8 = paddingBottom;
                                    i14 = paddingTop2;
                                    break;
                            }
                            if (p(i27)) {
                                paddingLeft += this.g;
                            }
                            int i28 = paddingLeft + puVar2.leftMargin;
                            a(childAt2, i28, i14, measuredWidth2, measuredHeight2);
                            paddingLeft = i28 + measuredWidth2 + puVar2.rightMargin;
                        }
                    } else {
                        i10 = i6;
                        i11 = i25;
                    }
                    i12 = -1;
                    i13 = puVar2.gravity;
                    if (i13 < 0) {
                    }
                    switch (i13 & 112) {
                        case 16:
                            break;
                        case 48:
                            break;
                        case 80:
                            break;
                    }
                    if (p(i27)) {
                    }
                    int i282 = paddingLeft + puVar2.leftMargin;
                    a(childAt2, i282, i14, measuredWidth2, measuredHeight2);
                    paddingLeft = i282 + measuredWidth2 + puVar2.rightMargin;
                } else {
                    i8 = paddingBottom;
                    i9 = childCount2;
                    i10 = i6;
                    i11 = i25;
                }
            }
            i26++;
            i5 = i7;
            i6 = i10;
            childCount2 = i9;
            i25 = i11;
            paddingBottom = i8;
            i16 = 8;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x02e1, code lost:
    
        if (r12.width == (-1)) goto L156;
     */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0652 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0866  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x088e  */
    /* JADX WARN: Removed duplicated region for block: B:352:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:356:0x06ab  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x081f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        float f;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        float f2;
        int i19;
        int i20;
        boolean z;
        int baseline;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        float f3;
        char c;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z2;
        boolean z3;
        pu puVar;
        boolean z4;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        char c2;
        int i40;
        pu puVar2;
        int i41;
        boolean z5;
        int i42 = -2;
        int i43 = 8;
        float f4 = 0.0f;
        int i44 = 1073741824;
        if (this.d == 1) {
            this.h = 0;
            int childCount = getChildCount();
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int i45 = this.b;
            boolean z6 = this.j;
            int i46 = 0;
            boolean z7 = true;
            boolean z8 = false;
            boolean z9 = false;
            int i47 = 0;
            int i48 = 0;
            int i49 = 0;
            float f5 = 0.0f;
            int i50 = 0;
            int i51 = 0;
            while (i46 < childCount) {
                View childAt = getChildAt(i46);
                if (childAt == null || childAt.getVisibility() == i43) {
                    i36 = i45;
                    i37 = mode2;
                    i38 = mode;
                    i39 = childCount;
                } else {
                    if (p(i46)) {
                        this.h += this.m;
                    }
                    pu puVar3 = (pu) childAt.getLayoutParams();
                    f5 += puVar3.weight;
                    if (mode2 == i44 && puVar3.height == 0 && puVar3.weight > f4) {
                        int i52 = this.h;
                        this.h = Math.max(i52, puVar3.topMargin + i52 + puVar3.bottomMargin);
                        i36 = i45;
                        i37 = mode2;
                        i40 = mode;
                        i39 = childCount;
                        puVar2 = puVar3;
                        z9 = true;
                    } else {
                        if (puVar3.height != 0 || puVar3.weight <= f4) {
                            c2 = 0;
                        } else {
                            puVar3.height = i42;
                            c2 = 0;
                        }
                        i36 = i45;
                        i37 = mode2;
                        i40 = mode;
                        i39 = childCount;
                        measureChildWithMargins(childAt, i, 0, i2, f5 == f4 ? this.h : 0);
                        if (c2 != 0) {
                            puVar2 = puVar3;
                            puVar2.height = 0;
                        } else {
                            puVar2 = puVar3;
                        }
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i53 = this.h;
                        this.h = Math.max(i53, i53 + measuredHeight + puVar2.topMargin + puVar2.bottomMargin);
                        if (z6) {
                            i50 = Math.max(measuredHeight, i50);
                        }
                    }
                    if (i36 >= 0 && i36 == i46 + 1) {
                        this.c = this.h;
                    }
                    if (i46 < i36 && puVar2.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    i38 = i40;
                    if (i38 != 1073741824) {
                        i41 = -1;
                        if (puVar2.width == -1) {
                            z5 = true;
                            z8 = true;
                            int i54 = puVar2.leftMargin + puVar2.rightMargin;
                            int measuredWidth = childAt.getMeasuredWidth() + i54;
                            int max = Math.max(i51, measuredWidth);
                            int combineMeasuredStates = View.combineMeasuredStates(i47, childAt.getMeasuredState());
                            boolean z10 = !z7 && puVar2.width == i41;
                            if (puVar2.weight <= 0.0f) {
                                if (true != z5) {
                                    i54 = measuredWidth;
                                }
                                i49 = Math.max(i49, i54);
                            } else {
                                int i55 = i49;
                                if (true != z5) {
                                    i54 = measuredWidth;
                                }
                                i48 = Math.max(i48, i54);
                                i49 = i55;
                            }
                            i51 = max;
                            i47 = combineMeasuredStates;
                            z7 = z10;
                        }
                    } else {
                        i41 = -1;
                    }
                    z5 = false;
                    int i542 = puVar2.leftMargin + puVar2.rightMargin;
                    int measuredWidth2 = childAt.getMeasuredWidth() + i542;
                    int max2 = Math.max(i51, measuredWidth2);
                    int combineMeasuredStates2 = View.combineMeasuredStates(i47, childAt.getMeasuredState());
                    if (z7) {
                    }
                    if (puVar2.weight <= 0.0f) {
                    }
                    i51 = max2;
                    i47 = combineMeasuredStates2;
                    z7 = z10;
                }
                i46++;
                mode = i38;
                i45 = i36;
                mode2 = i37;
                childCount = i39;
                i42 = -2;
                i43 = 8;
                f4 = 0.0f;
                i44 = 1073741824;
            }
            int i56 = mode2;
            int i57 = mode;
            int i58 = childCount;
            int i59 = i47;
            int i60 = i48;
            int i61 = i49;
            int i62 = i50;
            int i63 = i51;
            if (this.h > 0) {
                i31 = i58;
                if (p(i31)) {
                    this.h += this.m;
                }
            } else {
                i31 = i58;
            }
            if (z6) {
                i32 = i56;
                if (i32 != Integer.MIN_VALUE) {
                    if (i32 == 0) {
                        i32 = 0;
                    }
                }
                this.h = 0;
                for (int i64 = 0; i64 < i31; i64++) {
                    View childAt2 = getChildAt(i64);
                    if (childAt2 != null && childAt2.getVisibility() != 8) {
                        pu puVar4 = (pu) childAt2.getLayoutParams();
                        int i65 = this.h;
                        this.h = Math.max(i65, i65 + i62 + puVar4.topMargin + puVar4.bottomMargin);
                    }
                }
            } else {
                i32 = i56;
            }
            int paddingTop = this.h + getPaddingTop() + getPaddingBottom();
            this.h = paddingTop;
            int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
            int i66 = (16777215 & resolveSizeAndState) - this.h;
            if (z9 || (i66 != 0 && f5 > 0.0f)) {
                float f6 = this.i;
                if (f6 > 0.0f) {
                    f5 = f6;
                }
                this.h = 0;
                int i67 = i60;
                int i68 = 0;
                while (i68 < i31) {
                    View childAt3 = getChildAt(i68);
                    if (childAt3.getVisibility() == 8) {
                        i34 = i32;
                    } else {
                        pu puVar5 = (pu) childAt3.getLayoutParams();
                        float f7 = puVar5.weight;
                        if (f7 > 0.0f) {
                            int i69 = (int) ((i66 * f7) / f5);
                            f5 -= f7;
                            int i70 = i66 - i69;
                            int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + puVar5.leftMargin + puVar5.rightMargin, puVar5.width);
                            if (puVar5.height == 0 && i32 == 1073741824) {
                                if (i69 <= 0) {
                                    i69 = 0;
                                }
                                childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i69, 1073741824));
                            } else {
                                int measuredHeight2 = childAt3.getMeasuredHeight() + i69;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
                            }
                            i59 = View.combineMeasuredStates(i59, childAt3.getMeasuredState() & (-256));
                            i66 = i70;
                        }
                        int i71 = puVar5.leftMargin + puVar5.rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth() + i71;
                        int max3 = Math.max(i63, measuredWidth3);
                        i34 = i32;
                        if (i57 != 1073741824) {
                            i35 = max3;
                        } else {
                            i35 = max3;
                        }
                        i71 = measuredWidth3;
                        i67 = Math.max(i67, i71);
                        boolean z11 = z7 && puVar5.width == -1;
                        int i72 = this.h;
                        this.h = Math.max(i72, childAt3.getMeasuredHeight() + i72 + puVar5.topMargin + puVar5.bottomMargin);
                        z7 = z11;
                        i63 = i35;
                    }
                    i68++;
                    i32 = i34;
                }
                this.h += getPaddingTop() + getPaddingBottom();
                i33 = i67;
            } else {
                i33 = Math.max(i60, i61);
                if (z6 && i32 != 1073741824) {
                    for (int i73 = 0; i73 < i31; i73++) {
                        View childAt4 = getChildAt(i73);
                        if (childAt4 != null && childAt4.getVisibility() != 8 && ((pu) childAt4.getLayoutParams()).weight > 0.0f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i62, 1073741824));
                        }
                    }
                }
            }
            int i74 = i63;
            if (z7 || i57 == 1073741824) {
                i33 = i74;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(i33 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i59), resolveSizeAndState);
            if (z8) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i75 = 0; i75 < i31; i75++) {
                    View childAt5 = getChildAt(i75);
                    if (childAt5.getVisibility() != 8) {
                        pu puVar6 = (pu) childAt5.getLayoutParams();
                        if (puVar6.width == -1) {
                            int i76 = puVar6.height;
                            puVar6.height = childAt5.getMeasuredHeight();
                            measureChildWithMargins(childAt5, makeMeasureSpec, 0, i2, 0);
                            puVar6.height = i76;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.h = 0;
        int childCount2 = getChildCount();
        int mode3 = View.MeasureSpec.getMode(i);
        int mode4 = View.MeasureSpec.getMode(i2);
        if (this.k == null || this.l == null) {
            this.k = new int[4];
            this.l = new int[4];
        }
        int[] iArr = this.k;
        int[] iArr2 = this.l;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z12 = this.a;
        boolean z13 = this.j;
        int i77 = 0;
        float f8 = 0.0f;
        int i78 = 0;
        int i79 = 0;
        int i80 = 0;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = true;
        int i81 = 0;
        int i82 = 0;
        while (i79 < childCount2) {
            View childAt6 = getChildAt(i79);
            if (childAt6 == null) {
                i22 = i77;
                i23 = i78;
            } else {
                i22 = i77;
                i23 = i78;
                if (childAt6.getVisibility() != 8) {
                    if (p(i79)) {
                        this.h += this.g;
                    }
                    pu puVar7 = (pu) childAt6.getLayoutParams();
                    float f9 = f8 + puVar7.weight;
                    if (mode3 != 1073741824) {
                        i24 = i79;
                        i25 = mode3;
                    } else if (puVar7.width != 0) {
                        i24 = i79;
                        i25 = 1073741824;
                    } else if (puVar7.weight > 0.0f) {
                        int i83 = i79;
                        this.h += puVar7.leftMargin + puVar7.rightMargin;
                        if (z12) {
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(makeMeasureSpec2, makeMeasureSpec2);
                            puVar = puVar7;
                            z3 = z12;
                            i26 = i22;
                            i27 = i23;
                            i29 = i83;
                            z2 = z13;
                        } else {
                            puVar = puVar7;
                            z3 = z12;
                            i26 = i22;
                            i27 = i23;
                            i29 = i83;
                            z15 = true;
                            z2 = z13;
                        }
                        if (mode4 == 1073741824 && puVar.height == -1) {
                            z4 = true;
                            z14 = true;
                        } else {
                            z4 = false;
                        }
                        int i84 = puVar.topMargin + puVar.bottomMargin;
                        int measuredHeight3 = childAt6.getMeasuredHeight() + i84;
                        int combineMeasuredStates3 = View.combineMeasuredStates(i27, childAt6.getMeasuredState());
                        if (z3) {
                            int baseline2 = childAt6.getBaseline();
                            if (baseline2 != -1) {
                                int i85 = (((puVar.gravity < 0 ? this.e : puVar.gravity) & 112) >> 4) >> 1;
                                i30 = i84;
                                iArr[i85] = Math.max(iArr[i85], baseline2);
                                iArr2[i85] = Math.max(iArr2[i85], measuredHeight3 - baseline2);
                            } else {
                                i30 = i84;
                            }
                        } else {
                            i30 = i84;
                        }
                        int max4 = Math.max(i82, measuredHeight3);
                        boolean z17 = !z16 && puVar.height == -1;
                        if (puVar.weight > 0.0f) {
                            if (true == z4) {
                                measuredHeight3 = i30;
                            }
                            i81 = Math.max(i81, measuredHeight3);
                            i77 = i26;
                        } else {
                            int i86 = i81;
                            if (true == z4) {
                                measuredHeight3 = i30;
                            }
                            i77 = Math.max(i26, measuredHeight3);
                            i81 = i86;
                        }
                        i82 = max4;
                        i78 = combineMeasuredStates3;
                        z16 = z17;
                        f8 = f9;
                        i79 = i29 + 1;
                        z13 = z2;
                        z12 = z3;
                    } else {
                        i24 = i79;
                        i25 = 1073741824;
                    }
                    if (puVar7.width == 0) {
                        f3 = 0.0f;
                        if (puVar7.weight > 0.0f) {
                            puVar7.width = -2;
                            c = 0;
                            i26 = i22;
                            i27 = i23;
                            i28 = i25;
                            i29 = i24;
                            z2 = z13;
                            z3 = z12;
                            measureChildWithMargins(childAt6, i, f9 != f3 ? this.h : 0, i2, 0);
                            if (c == 0) {
                                puVar = puVar7;
                                puVar.width = 0;
                            } else {
                                puVar = puVar7;
                            }
                            int measuredWidth4 = childAt6.getMeasuredWidth();
                            if (i28 != 1073741824) {
                                this.h += puVar.leftMargin + measuredWidth4 + puVar.rightMargin;
                            } else {
                                int i87 = this.h;
                                this.h = Math.max(i87, i87 + measuredWidth4 + puVar.leftMargin + puVar.rightMargin);
                            }
                            if (z2) {
                                i80 = Math.max(measuredWidth4, i80);
                            }
                            if (mode4 == 1073741824) {
                            }
                            z4 = false;
                            int i842 = puVar.topMargin + puVar.bottomMargin;
                            int measuredHeight32 = childAt6.getMeasuredHeight() + i842;
                            int combineMeasuredStates32 = View.combineMeasuredStates(i27, childAt6.getMeasuredState());
                            if (z3) {
                            }
                            int max42 = Math.max(i82, measuredHeight32);
                            if (z16) {
                            }
                            if (puVar.weight > 0.0f) {
                            }
                            i82 = max42;
                            i78 = combineMeasuredStates32;
                            z16 = z17;
                            f8 = f9;
                            i79 = i29 + 1;
                            z13 = z2;
                            z12 = z3;
                        }
                    } else {
                        f3 = 0.0f;
                    }
                    c = 0;
                    i26 = i22;
                    i27 = i23;
                    i28 = i25;
                    i29 = i24;
                    z2 = z13;
                    z3 = z12;
                    measureChildWithMargins(childAt6, i, f9 != f3 ? this.h : 0, i2, 0);
                    if (c == 0) {
                    }
                    int measuredWidth42 = childAt6.getMeasuredWidth();
                    if (i28 != 1073741824) {
                    }
                    if (z2) {
                    }
                    if (mode4 == 1073741824) {
                    }
                    z4 = false;
                    int i8422 = puVar.topMargin + puVar.bottomMargin;
                    int measuredHeight322 = childAt6.getMeasuredHeight() + i8422;
                    int combineMeasuredStates322 = View.combineMeasuredStates(i27, childAt6.getMeasuredState());
                    if (z3) {
                    }
                    int max422 = Math.max(i82, measuredHeight322);
                    if (z16) {
                    }
                    if (puVar.weight > 0.0f) {
                    }
                    i82 = max422;
                    i78 = combineMeasuredStates322;
                    z16 = z17;
                    f8 = f9;
                    i79 = i29 + 1;
                    z13 = z2;
                    z12 = z3;
                }
            }
            z2 = z13;
            z3 = z12;
            i77 = i22;
            i78 = i23;
            i29 = i79;
            i79 = i29 + 1;
            z13 = z2;
            z12 = z3;
        }
        boolean z18 = z13;
        boolean z19 = z12;
        int i88 = i82;
        int i89 = i78;
        int i90 = i81;
        if (this.h > 0 && p(childCount2)) {
            this.h += this.g;
        }
        int i91 = iArr[1];
        if (i91 == -1) {
            i3 = i89;
            if (iArr[0] != -1 || iArr[2] != -1) {
                i4 = -1;
            } else if (iArr[3] != -1) {
                i4 = -1;
            } else {
                i5 = i88;
                i6 = mode4;
                if (z18) {
                    if (mode3 == Integer.MIN_VALUE) {
                        i21 = mode3;
                    } else if (mode3 == 0) {
                        i21 = 0;
                        mode3 = 0;
                    }
                    this.h = 0;
                    for (int i92 = 0; i92 < childCount2; i92++) {
                        View childAt7 = getChildAt(i92);
                        if (childAt7 != null && childAt7.getVisibility() != 8) {
                            pu puVar8 = (pu) childAt7.getLayoutParams();
                            int i93 = this.h;
                            this.h = Math.max(i93, i93 + i80 + puVar8.leftMargin + puVar8.rightMargin);
                        }
                    }
                    i7 = mode3;
                    mode3 = i21;
                    int paddingLeft = this.h + getPaddingLeft() + getPaddingRight();
                    this.h = paddingLeft;
                    int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
                    i8 = (16777215 & resolveSizeAndState2) - this.h;
                    if (!z15 || (i8 != 0 && f8 > 0.0f)) {
                        f = this.i;
                        if (f > 0.0f) {
                            f8 = f;
                        }
                        iArr[3] = -1;
                        iArr[2] = -1;
                        iArr[1] = -1;
                        iArr[0] = -1;
                        iArr2[3] = -1;
                        iArr2[2] = -1;
                        iArr2[1] = -1;
                        iArr2[0] = -1;
                        this.h = 0;
                        int i94 = i8;
                        i9 = i3;
                        i10 = 0;
                        int i95 = -1;
                        while (i10 < childCount2) {
                            View childAt8 = getChildAt(i10);
                            if (childAt8 == null) {
                                i15 = childCount2;
                                i16 = i94;
                                i17 = i6;
                                i18 = i7;
                            } else if (childAt8.getVisibility() == 8) {
                                i15 = childCount2;
                                i16 = i94;
                                i17 = i6;
                                i18 = i7;
                            } else {
                                pu puVar9 = (pu) childAt8.getLayoutParams();
                                float f10 = puVar9.weight;
                                if (f10 > 0.0f) {
                                    i15 = childCount2;
                                    int i96 = (int) ((i94 * f10) / f8);
                                    float f11 = f8 - f10;
                                    int i97 = i94 - i96;
                                    int childMeasureSpec2 = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + puVar9.topMargin + puVar9.bottomMargin, puVar9.height);
                                    if (puVar9.width == 0 && mode3 == 1073741824) {
                                        if (i96 <= 0) {
                                            i96 = 0;
                                        }
                                        childAt8.measure(View.MeasureSpec.makeMeasureSpec(i96, 1073741824), childMeasureSpec2);
                                    } else {
                                        int measuredWidth5 = childAt8.getMeasuredWidth() + i96;
                                        if (measuredWidth5 < 0) {
                                            measuredWidth5 = 0;
                                        }
                                        childAt8.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth5, 1073741824), childMeasureSpec2);
                                    }
                                    i9 = View.combineMeasuredStates(i9, childAt8.getMeasuredState() & (-16777216));
                                    f8 = f11;
                                    i16 = i97;
                                } else {
                                    i15 = childCount2;
                                    i16 = i94;
                                }
                                if (i7 == 1073741824) {
                                    f2 = f8;
                                    this.h += childAt8.getMeasuredWidth() + puVar9.leftMargin + puVar9.rightMargin;
                                    i19 = i9;
                                } else {
                                    f2 = f8;
                                    int i98 = this.h;
                                    i19 = i9;
                                    this.h = Math.max(i98, childAt8.getMeasuredWidth() + i98 + puVar9.leftMargin + puVar9.rightMargin);
                                }
                                i17 = i6;
                                boolean z20 = i17 != 1073741824 && puVar9.height == -1;
                                i18 = i7;
                                int i99 = puVar9.topMargin + puVar9.bottomMargin;
                                int measuredHeight4 = childAt8.getMeasuredHeight() + i99;
                                i95 = Math.max(i95, measuredHeight4);
                                i77 = Math.max(i77, true != z20 ? measuredHeight4 : i99);
                                if (z16) {
                                    i20 = -1;
                                    if (puVar9.height == -1) {
                                        z = true;
                                        if (z19 && (baseline = childAt8.getBaseline()) != i20) {
                                            int i100 = (((puVar9.gravity >= 0 ? this.e : puVar9.gravity) & 112) >> 4) >> 1;
                                            iArr[i100] = Math.max(iArr[i100], baseline);
                                            iArr2[i100] = Math.max(iArr2[i100], measuredHeight4 - baseline);
                                        }
                                        z16 = z;
                                        i9 = i19;
                                        f8 = f2;
                                    }
                                } else {
                                    i20 = -1;
                                }
                                z = false;
                                if (z19) {
                                    int i1002 = (((puVar9.gravity >= 0 ? this.e : puVar9.gravity) & 112) >> 4) >> 1;
                                    iArr[i1002] = Math.max(iArr[i1002], baseline);
                                    iArr2[i1002] = Math.max(iArr2[i1002], measuredHeight4 - baseline);
                                }
                                z16 = z;
                                i9 = i19;
                                f8 = f2;
                            }
                            i10++;
                            i94 = i16;
                            i7 = i18;
                            i6 = i17;
                            childCount2 = i15;
                        }
                        i11 = i2;
                        i12 = childCount2;
                        i13 = i6;
                        this.h += getPaddingLeft() + getPaddingRight();
                        i14 = iArr[1];
                        if (i14 == -1) {
                            if (iArr[0] != -1 || iArr[2] != -1) {
                                i14 = -1;
                            } else if (iArr[3] != -1) {
                                i14 = -1;
                            } else {
                                i5 = i95;
                            }
                        }
                        i5 = Math.max(i95, Math.max(iArr[3], Math.max(iArr[0], Math.max(i14, iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
                    } else {
                        i77 = Math.max(i77, i90);
                        if (z18 && mode3 != 1073741824) {
                            for (int i101 = 0; i101 < childCount2; i101++) {
                                View childAt9 = getChildAt(i101);
                                if (childAt9 != null && childAt9.getVisibility() != 8 && ((pu) childAt9.getLayoutParams()).weight > 0.0f) {
                                    childAt9.measure(View.MeasureSpec.makeMeasureSpec(i80, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt9.getMeasuredHeight(), 1073741824));
                                }
                            }
                        }
                        i11 = i2;
                        i12 = childCount2;
                        i13 = i6;
                        i9 = i3;
                    }
                    if (!z16 || i13 == 1073741824) {
                        i77 = i5;
                    }
                    setMeasuredDimension(((-16777216) & i9) | resolveSizeAndState2, View.resolveSizeAndState(Math.max(i77 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, i9 << 16));
                    if (!z14) {
                        return;
                    }
                    int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                    int i102 = 0;
                    while (true) {
                        int i103 = i12;
                        if (i102 >= i103) {
                            return;
                        }
                        View childAt10 = getChildAt(i102);
                        if (childAt10.getVisibility() != 8) {
                            pu puVar10 = (pu) childAt10.getLayoutParams();
                            if (puVar10.height == -1) {
                                int i104 = puVar10.width;
                                puVar10.width = childAt10.getMeasuredWidth();
                                measureChildWithMargins(childAt10, i, 0, makeMeasureSpec3, 0);
                                puVar10.width = i104;
                            }
                        }
                        i102++;
                        i12 = i103;
                    }
                }
                i7 = mode3;
                int paddingLeft2 = this.h + getPaddingLeft() + getPaddingRight();
                this.h = paddingLeft2;
                int resolveSizeAndState22 = View.resolveSizeAndState(Math.max(paddingLeft2, getSuggestedMinimumWidth()), i, 0);
                i8 = (16777215 & resolveSizeAndState22) - this.h;
                if (z15) {
                }
                f = this.i;
                if (f > 0.0f) {
                }
                iArr[3] = -1;
                iArr[2] = -1;
                iArr[1] = -1;
                iArr[0] = -1;
                iArr2[3] = -1;
                iArr2[2] = -1;
                iArr2[1] = -1;
                iArr2[0] = -1;
                this.h = 0;
                int i942 = i8;
                i9 = i3;
                i10 = 0;
                int i952 = -1;
                while (i10 < childCount2) {
                }
                i11 = i2;
                i12 = childCount2;
                i13 = i6;
                this.h += getPaddingLeft() + getPaddingRight();
                i14 = iArr[1];
                if (i14 == -1) {
                }
                i5 = Math.max(i952, Math.max(iArr[3], Math.max(iArr[0], Math.max(i14, iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
                if (!z16) {
                }
                i77 = i5;
                setMeasuredDimension(((-16777216) & i9) | resolveSizeAndState22, View.resolveSizeAndState(Math.max(i77 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, i9 << 16));
                if (!z14) {
                }
            }
        } else {
            i3 = i89;
            i4 = i91;
        }
        i6 = mode4;
        i5 = Math.max(i88, Math.max(iArr[3], Math.max(iArr[0], Math.max(i4, iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (z18) {
        }
        i7 = mode3;
        int paddingLeft22 = this.h + getPaddingLeft() + getPaddingRight();
        this.h = paddingLeft22;
        int resolveSizeAndState222 = View.resolveSizeAndState(Math.max(paddingLeft22, getSuggestedMinimumWidth()), i, 0);
        i8 = (16777215 & resolveSizeAndState222) - this.h;
        if (z15) {
        }
        f = this.i;
        if (f > 0.0f) {
        }
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        this.h = 0;
        int i9422 = i8;
        i9 = i3;
        i10 = 0;
        int i9522 = -1;
        while (i10 < childCount2) {
        }
        i11 = i2;
        i12 = childCount2;
        i13 = i6;
        this.h += getPaddingLeft() + getPaddingRight();
        i14 = iArr[1];
        if (i14 == -1) {
        }
        i5 = Math.max(i9522, Math.max(iArr[3], Math.max(iArr[0], Math.max(i14, iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (!z16) {
        }
        i77 = i5;
        setMeasuredDimension(((-16777216) & i9) | resolveSizeAndState222, View.resolveSizeAndState(Math.max(i77 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, i9 << 16));
        if (!z14) {
        }
    }
}
