package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v7.view.menu.ActionMenuItemView;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.preference.Preference;
import defpackage.hp;
import defpackage.ln;
import defpackage.lo;
import defpackage.lr;
import defpackage.me;
import defpackage.mz;
import defpackage.na;
import defpackage.nb;
import defpackage.nc;
import defpackage.nd;
import defpackage.pu;
import defpackage.pv;
import defpackage.tb;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ActionMenuView extends pv implements ln, me {
    public lo a;
    public boolean b;
    public mz c;
    hp d;
    private Context h;
    private int i;
    private boolean j;
    private int k;
    private int l;
    private int m;

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public static final nc l() {
        nc ncVar = new nc();
        ncVar.gravity = 16;
        return ncVar;
    }

    public static final nc m(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return l();
        }
        nc ncVar = layoutParams instanceof nc ? new nc((nc) layoutParams) : new nc(layoutParams);
        if (ncVar.gravity <= 0) {
            ncVar.gravity = 16;
        }
        return ncVar;
    }

    @Override // defpackage.me
    public final void a(lo loVar) {
        this.a = loVar;
    }

    @Override // defpackage.ln
    public final boolean b(lr lrVar) {
        return this.a.z(lrVar, 0);
    }

    @Override // defpackage.pv, android.view.ViewGroup
    /* renamed from: c, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final nc generateLayoutParams(AttributeSet attributeSet) {
        return new nc(getContext(), attributeSet);
    }

    @Override // defpackage.pv, android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof nc;
    }

    @Override // defpackage.pv
    /* renamed from: d */
    protected final /* bridge */ /* synthetic */ pu generateDefaultLayoutParams() {
        return l();
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // defpackage.pv
    /* renamed from: f */
    protected final /* bridge */ /* synthetic */ pu generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public final Menu g() {
        if (this.a == null) {
            Context context = getContext();
            lo loVar = new lo(context);
            this.a = loVar;
            loVar.p(new nd());
            mz mzVar = new mz(context);
            this.c = mzVar;
            mzVar.p();
            this.c.e = new nb();
            this.a.h(this.c, this.h);
            this.c.j(this);
        }
        return this.a;
    }

    @Override // defpackage.pv, android.view.ViewGroup
    protected final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return l();
    }

    public final void h() {
        mz mzVar = this.c;
        if (mzVar != null) {
            mzVar.n();
        }
    }

    public final void i(int i) {
        if (this.i != i) {
            this.i = i;
            if (i == 0) {
                this.h = getContext();
            } else {
                this.h = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public final void j(mz mzVar) {
        this.c = mzVar;
        mzVar.j(this);
    }

    protected final boolean k(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof na)) {
            z = ((na) childAt).c();
        }
        return (i <= 0 || !(childAt2 instanceof na)) ? z : ((na) childAt2).d() | z;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        mz mzVar = this.c;
        if (mzVar != null) {
            mzVar.i();
            if (this.c.l()) {
                this.c.k();
                this.c.m();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // defpackage.pv, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.j) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int i7 = this.g;
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean b = tb.b(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                nc ncVar = (nc) childAt.getLayoutParams();
                if (ncVar.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (k(i11)) {
                        measuredWidth += i7;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b) {
                        i5 = getPaddingLeft() + ncVar.leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ncVar.rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i12 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ncVar.leftMargin) + ncVar.rightMargin;
                    k(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1) {
            if (i9 == 0) {
                View childAt2 = getChildAt(0);
                int measuredWidth2 = childAt2.getMeasuredWidth();
                int measuredHeight2 = childAt2.getMeasuredHeight();
                int i13 = (i8 / 2) - (measuredWidth2 / 2);
                int i14 = i6 - (measuredHeight2 / 2);
                childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
                return;
            }
            childCount = 1;
        }
        int i15 = i10 - (i9 ^ 1);
        int max = Math.max(0, i15 > 0 ? paddingRight / i15 : 0);
        if (b) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                nc ncVar2 = (nc) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !ncVar2.a) {
                    int i17 = width2 - ncVar2.rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ncVar2.leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            nc ncVar3 = (nc) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !ncVar3.a) {
                int i20 = paddingLeft + ncVar3.leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = i20 + measuredWidth4 + ncVar3.rightMargin + max;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v40 */
    @Override // defpackage.pv, android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        boolean z2;
        int i4;
        boolean z3;
        boolean z4;
        int i5;
        ?? r6;
        int i6;
        int i7;
        int i8;
        lo loVar;
        boolean z5 = this.j;
        boolean z6 = View.MeasureSpec.getMode(i) == 1073741824;
        this.j = z6;
        if (z5 != z6) {
            this.k = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.j && (loVar = this.a) != null && size != this.k) {
            this.k = size;
            loVar.l(true);
        }
        int childCount = getChildCount();
        if (!this.j) {
            i3 = 0;
        } else {
            if (childCount > 0) {
                int mode = View.MeasureSpec.getMode(i2);
                int size2 = View.MeasureSpec.getSize(i);
                int size3 = View.MeasureSpec.getSize(i2);
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
                int i9 = size2 - (paddingLeft + paddingRight);
                int i10 = this.l;
                int i11 = i9 / i10;
                int i12 = i9 % i10;
                if (i11 == 0) {
                    setMeasuredDimension(i9, 0);
                    return;
                }
                int i13 = i10 + (i12 / i11);
                int childCount2 = getChildCount();
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                boolean z7 = false;
                long j = 0;
                int i17 = 0;
                int i18 = 0;
                while (i16 < childCount2) {
                    View childAt = getChildAt(i16);
                    if (childAt.getVisibility() == 8) {
                        i6 = i9;
                        i5 = size3;
                        i7 = paddingTop;
                    } else {
                        boolean z8 = childAt instanceof ActionMenuItemView;
                        int i19 = i14 + 1;
                        if (z8) {
                            int i20 = this.m;
                            i5 = size3;
                            r6 = 0;
                            childAt.setPadding(i20, 0, i20, 0);
                        } else {
                            i5 = size3;
                            r6 = 0;
                        }
                        nc ncVar = (nc) childAt.getLayoutParams();
                        ncVar.f = r6;
                        ncVar.c = r6;
                        ncVar.b = r6;
                        ncVar.d = r6;
                        ncVar.leftMargin = r6;
                        ncVar.rightMargin = r6;
                        ncVar.e = z8 && ((ActionMenuItemView) childAt).b();
                        int i21 = true != ncVar.a ? i11 : 1;
                        nc ncVar2 = (nc) childAt.getLayoutParams();
                        i6 = i9;
                        i7 = paddingTop;
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingTop, View.MeasureSpec.getMode(childMeasureSpec));
                        ActionMenuItemView actionMenuItemView = z8 ? (ActionMenuItemView) childAt : null;
                        boolean z9 = actionMenuItemView != null && actionMenuItemView.b();
                        if (i21 <= 0 || (z9 && i21 < 2)) {
                            i8 = 0;
                        } else {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(i21 * i13, Integer.MIN_VALUE), makeMeasureSpec);
                            int measuredWidth = childAt.getMeasuredWidth();
                            i8 = measuredWidth / i13;
                            if (measuredWidth % i13 != 0) {
                                i8++;
                            }
                            if (z9 && i8 < 2) {
                                i8 = 2;
                            }
                        }
                        ncVar2.d = !ncVar2.a && z9;
                        ncVar2.b = i8;
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i8 * i13, 1073741824), makeMeasureSpec);
                        i17 = Math.max(i17, i8);
                        if (ncVar.d) {
                            i18++;
                        }
                        z7 |= ncVar.a;
                        i11 -= i8;
                        i15 = Math.max(i15, childAt.getMeasuredHeight());
                        if (i8 == 1) {
                            j |= 1 << i16;
                        }
                        i14 = i19;
                    }
                    i16++;
                    size3 = i5;
                    paddingTop = i7;
                    i9 = i6;
                }
                int i22 = i9;
                int i23 = size3;
                int i24 = i17;
                if (z7 && i14 == 2) {
                    z = true;
                    i14 = 2;
                } else {
                    z = false;
                }
                boolean z10 = false;
                while (i18 > 0 && i11 > 0) {
                    int i25 = Preference.DEFAULT_ORDER;
                    int i26 = 0;
                    int i27 = 0;
                    long j2 = 0;
                    while (i26 < childCount2) {
                        nc ncVar3 = (nc) getChildAt(i26).getLayoutParams();
                        boolean z11 = z10;
                        if (ncVar3.d) {
                            int i28 = ncVar3.b;
                            if (i28 < i25) {
                                j2 = 1 << i26;
                                i25 = i28;
                                i27 = 1;
                            } else if (i28 == i25) {
                                j2 |= 1 << i26;
                                i27++;
                            }
                        }
                        i26++;
                        z10 = z11;
                    }
                    z2 = z10;
                    j |= j2;
                    if (i27 > i11) {
                        i4 = i15;
                        break;
                    }
                    int i29 = i25 + 1;
                    int i30 = 0;
                    while (i30 < childCount2) {
                        View childAt2 = getChildAt(i30);
                        nc ncVar4 = (nc) childAt2.getLayoutParams();
                        int i31 = i15;
                        long j3 = 1 << i30;
                        if ((j2 & j3) != 0) {
                            if (z && ncVar4.e && i11 == 1) {
                                int i32 = this.m;
                                childAt2.setPadding(i32 + i13, 0, i32, 0);
                                i11 = 1;
                            }
                            ncVar4.b++;
                            ncVar4.f = true;
                            i11--;
                        } else if (ncVar4.b == i29) {
                            j |= j3;
                        }
                        i30++;
                        i15 = i31;
                    }
                    z10 = true;
                }
                z2 = z10;
                i4 = i15;
                if (z7 || i14 != 1) {
                    z3 = false;
                } else {
                    z3 = true;
                    i14 = 1;
                }
                if (i11 <= 0 || j == 0 || (i11 >= i14 - 1 && !z3 && i24 <= 1)) {
                    z4 = z2;
                } else {
                    float bitCount = Long.bitCount(j);
                    if (!z3) {
                        if ((j & 1) != 0 && !((nc) getChildAt(0).getLayoutParams()).e) {
                            bitCount -= 0.5f;
                        }
                        int i33 = childCount2 - 1;
                        if ((j & (1 << i33)) != 0 && !((nc) getChildAt(i33).getLayoutParams()).e) {
                            bitCount -= 0.5f;
                        }
                    }
                    int i34 = bitCount > 0.0f ? (int) ((i11 * i13) / bitCount) : 0;
                    boolean z12 = z2;
                    int i35 = 0;
                    while (i35 < childCount2) {
                        if ((j & (1 << i35)) != 0) {
                            View childAt3 = getChildAt(i35);
                            nc ncVar5 = (nc) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                ncVar5.c = i34;
                                ncVar5.f = true;
                                if (i35 == 0) {
                                    if (!ncVar5.e) {
                                        ncVar5.leftMargin = (-i34) / 2;
                                    }
                                    i35 = 0;
                                }
                                z12 = true;
                            } else if (ncVar5.a) {
                                ncVar5.c = i34;
                                ncVar5.f = true;
                                ncVar5.rightMargin = (-i34) / 2;
                                z12 = true;
                            } else {
                                if (i35 != 0) {
                                    ncVar5.leftMargin = i34 / 2;
                                }
                                if (i35 != childCount2 - 1) {
                                    ncVar5.rightMargin = i34 / 2;
                                }
                            }
                        }
                        i35++;
                    }
                    z4 = z12;
                }
                if (z4) {
                    for (int i36 = 0; i36 < childCount2; i36++) {
                        View childAt4 = getChildAt(i36);
                        nc ncVar6 = (nc) childAt4.getLayoutParams();
                        if (ncVar6.f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec((ncVar6.b * i13) + ncVar6.c, 1073741824), childMeasureSpec);
                        }
                    }
                }
                setMeasuredDimension(i22, mode != 1073741824 ? i4 : i23);
                return;
            }
            i3 = 0;
        }
        while (i3 < childCount) {
            nc ncVar7 = (nc) getChildAt(i3).getLayoutParams();
            ncVar7.rightMargin = 0;
            ncVar7.leftMargin = 0;
            i3++;
        }
        super.onMeasure(i, i2);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        q();
        float f = context.getResources().getDisplayMetrics().density;
        this.l = (int) (56.0f * f);
        this.m = (int) (f * 4.0f);
        this.h = context;
        this.i = 0;
    }

    @Override // defpackage.pv, android.view.ViewGroup
    protected final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }
}
