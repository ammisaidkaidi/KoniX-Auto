package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.embedded.projection.R;
import defpackage.hp;
import defpackage.hs;
import defpackage.it;
import defpackage.ki;
import defpackage.ku;
import defpackage.lo;
import defpackage.lr;
import defpackage.mz;
import defpackage.np;
import defpackage.nr;
import defpackage.on;
import defpackage.ot;
import defpackage.rx;
import defpackage.sm;
import defpackage.sn;
import defpackage.sp;
import defpackage.sq;
import defpackage.ss;
import defpackage.sv;
import defpackage.tb;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private int A;
    private int B;
    private ColorStateList C;
    private ColorStateList D;
    private boolean E;
    private boolean F;
    private final ArrayList G;
    private final int[] H;
    private sv I;
    private final Runnable J;
    private final hp K;
    public ActionMenuView a;
    public TextView b;
    public TextView c;
    public ImageButton d;
    public Drawable e;
    public CharSequence f;
    public ImageButton g;
    public View h;
    public Context i;
    public int j;
    public int k;
    public int l;
    public int m;
    public rx n;
    public CharSequence o;
    public CharSequence p;
    public final ArrayList q;
    public mz r;
    public sp s;
    private ImageView t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    public Toolbar(Context context) {
        this(context, null);
    }

    private final void A(List list, int i) {
        int c = hs.c(this);
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, hs.c(this));
        list.clear();
        if (c == 1) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                sq sqVar = (sq) childAt.getLayoutParams();
                if (sqVar.b == 0 && E(childAt) && v(sqVar.a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            sq sqVar2 = (sq) childAt2.getLayoutParams();
            if (sqVar2.b == 0 && E(childAt2) && v(sqVar2.a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    private final void B(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        sq t = layoutParams == null ? t() : !checkLayoutParams(layoutParams) ? u(layoutParams) : (sq) layoutParams;
        t.b = 1;
        if (!z || this.h == null) {
            addView(view, t);
        } else {
            view.setLayoutParams(t);
            this.q.add(view);
        }
    }

    private final void C() {
        if (this.t == null) {
            this.t = new nr(getContext(), null);
        }
    }

    private final boolean D(View view) {
        return view.getParent() == this || this.q.contains(view);
    }

    private final boolean E(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private static final int F(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    private static final int G(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private final void H(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public static final sq t() {
        return new sq();
    }

    protected static final sq u(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof sq ? new sq((sq) layoutParams) : layoutParams instanceof it ? new sq((it) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new sq((ViewGroup.MarginLayoutParams) layoutParams) : new sq(layoutParams);
    }

    private final int v(int i) {
        int c = hs.c(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i, c) & 7;
        switch (absoluteGravity) {
            case 1:
            case 3:
            case 5:
                return absoluteGravity;
            case 2:
            case 4:
            default:
                return c == 1 ? 5 : 3;
        }
    }

    private final int w(View view, int i) {
        sq sqVar = (sq) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = sqVar.a & 112;
        switch (i3) {
            case 16:
            case 48:
            case 80:
                break;
            default:
                i3 = this.B & 112;
                break;
        }
        switch (i3) {
            case 48:
                return getPaddingTop() - i2;
            case 80:
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - sqVar.bottomMargin) - i2;
            default:
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i4 < sqVar.topMargin) {
                    i4 = sqVar.topMargin;
                } else {
                    int i5 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                    if (i5 < sqVar.bottomMargin) {
                        i4 = Math.max(0, i4 - (sqVar.bottomMargin - i5));
                    }
                }
                return paddingTop + i4;
        }
    }

    private final int x(View view, int i, int[] iArr, int i2) {
        sq sqVar = (sq) view.getLayoutParams();
        int i3 = sqVar.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int w = w(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, w, max + measuredWidth, view.getMeasuredHeight() + w);
        return max + measuredWidth + sqVar.rightMargin;
    }

    private final int y(View view, int i, int[] iArr, int i2) {
        sq sqVar = (sq) view.getLayoutParams();
        int i3 = sqVar.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int w = w(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, w, max, view.getMeasuredHeight() + w);
        return max - (measuredWidth + sqVar.leftMargin);
    }

    private final int z(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final int a() {
        rx rxVar = this.n;
        if (rxVar != null) {
            return rxVar.g ? rxVar.a : rxVar.b;
        }
        return 0;
    }

    public final int b() {
        rx rxVar = this.n;
        if (rxVar != null) {
            return rxVar.g ? rxVar.b : rxVar.a;
        }
        return 0;
    }

    public final int c() {
        lo loVar;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (loVar = actionMenuView.a) == null || !loVar.hasVisibleItems()) ? a() : Math.max(a(), Math.max(this.A, 0));
    }

    @Override // android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof sq);
    }

    public final int d() {
        return e() != null ? Math.max(b(), Math.max(this.z, 0)) : b();
    }

    public final Drawable e() {
        ImageButton imageButton = this.d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public final ot f() {
        if (this.I == null) {
            this.I = new sv(this);
        }
        return this.I;
    }

    public final CharSequence g() {
        ImageButton imageButton = this.d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return t();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new sq(getContext(), attributeSet);
    }

    public final void h() {
        sp spVar = this.s;
        lr lrVar = spVar == null ? null : spVar.b;
        if (lrVar != null) {
            lrVar.collapseActionView();
        }
    }

    public final void i() {
        if (this.n == null) {
            this.n = new rx();
        }
    }

    public final void j() {
        if (this.a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.a = actionMenuView;
            actionMenuView.i(this.j);
            this.a.d = this.K;
            sq t = t();
            t.a = (this.m & 112) | 8388613;
            this.a.setLayoutParams(t);
            B(this.a, false);
        }
    }

    public final void k() {
        if (this.d == null) {
            this.d = new np(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            sq t = t();
            t.a = (this.m & 112) | 8388611;
            this.d.setLayoutParams(t);
        }
    }

    public final void l(Drawable drawable) {
        if (drawable != null) {
            C();
            if (!D(this.t)) {
                B(this.t, true);
            }
        } else {
            ImageView imageView = this.t;
            if (imageView != null && D(imageView)) {
                removeView(this.t);
                this.q.remove(this.t);
            }
        }
        ImageView imageView2 = this.t;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public final void m(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            k();
        }
        ImageButton imageButton = this.d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public final void n(Drawable drawable) {
        if (drawable != null) {
            k();
            if (!D(this.d)) {
                B(this.d, true);
            }
        } else {
            ImageButton imageButton = this.d;
            if (imageButton != null && D(imageButton)) {
                removeView(this.d);
                this.q.remove(this.d);
            }
        }
        ImageButton imageButton2 = this.d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public final void o(int i) {
        if (this.j != i) {
            this.j = i;
            if (i == 0) {
                this.i = getContext();
            } else {
                this.i = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.J);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int i = 9;
        if (actionMasked == 9) {
            this.F = false;
            actionMasked = 9;
        }
        if (!this.F) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9) {
                if (!onHoverEvent) {
                    this.F = true;
                }
                if (i != 10 || i == 3) {
                    this.F = false;
                }
                return true;
            }
        }
        i = actionMasked;
        if (i != 10) {
        }
        this.F = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02bc A[LOOP:0: B:44:0x02ba->B:45:0x02bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02de A[LOOP:1: B:48:0x02dc->B:49:0x02de, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0302 A[LOOP:2: B:52:0x0300->B:53:0x0302, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0352 A[LOOP:3: B:61:0x0350->B:62:0x0352, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0240  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int max;
        boolean E;
        boolean E2;
        int i7;
        int i8;
        int i9;
        int paddingTop;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int size;
        int i16;
        int size2;
        int i17;
        int size3;
        int i18;
        int i19;
        int i20;
        int size4;
        int c = hs.c(this);
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i21 = width - paddingRight;
        int[] iArr = this.H;
        iArr[1] = 0;
        iArr[0] = 0;
        int d = hs.d(this);
        int min = d >= 0 ? Math.min(d, i4 - i2) : 0;
        if (!E(this.d)) {
            i5 = paddingLeft;
        } else {
            if (c == 1) {
                i6 = y(this.d, i21, iArr, min);
                i5 = paddingLeft;
                if (E(this.g)) {
                    if (c == 1) {
                        i6 = y(this.g, i6, iArr, min);
                    } else {
                        i5 = x(this.g, i5, iArr, min);
                    }
                }
                if (E(this.a)) {
                    if (c == 1) {
                        i5 = x(this.a, i5, iArr, min);
                    } else {
                        i6 = y(this.a, i6, iArr, min);
                    }
                }
                int c2 = hs.c(this) != 1 ? c() : d();
                int d2 = hs.c(this) != 1 ? d() : c();
                iArr[0] = Math.max(0, c2 - i5);
                iArr[1] = Math.max(0, d2 - (i21 - i6));
                max = Math.max(i5, c2);
                int min2 = Math.min(i6, i21 - d2);
                if (E(this.h)) {
                    if (c == 1) {
                        min2 = y(this.h, min2, iArr, min);
                    } else {
                        max = x(this.h, max, iArr, min);
                    }
                }
                if (E(this.t)) {
                    if (c == 1) {
                        min2 = y(this.t, min2, iArr, min);
                    } else {
                        max = x(this.t, max, iArr, min);
                    }
                }
                E = E(this.b);
                E2 = E(this.c);
                if (E) {
                    i7 = 0;
                } else {
                    sq sqVar = (sq) this.b.getLayoutParams();
                    i7 = sqVar.bottomMargin + sqVar.topMargin + this.b.getMeasuredHeight();
                }
                if (E2) {
                    i8 = width;
                } else {
                    sq sqVar2 = (sq) this.c.getLayoutParams();
                    i8 = width;
                    i7 += sqVar2.topMargin + this.c.getMeasuredHeight() + sqVar2.bottomMargin;
                }
                if (!E || E2) {
                    TextView textView = !E ? this.b : this.c;
                    TextView textView2 = !E2 ? this.c : this.b;
                    sq sqVar3 = (sq) textView.getLayoutParams();
                    sq sqVar4 = (sq) textView2.getLayoutParams();
                    boolean z2 = (E || this.b.getMeasuredWidth() <= 0) ? !E2 && this.c.getMeasuredWidth() > 0 : true;
                    i9 = paddingLeft;
                    switch (this.B & 112) {
                        case 48:
                            paddingTop = getPaddingTop() + sqVar3.topMargin + this.x;
                            i10 = max;
                            i11 = min;
                            break;
                        case 80:
                            paddingTop = (((height - paddingBottom) - sqVar4.bottomMargin) - this.y) - i7;
                            i10 = max;
                            i11 = min;
                            break;
                        default:
                            int i22 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                            i11 = min;
                            i10 = max;
                            if (i22 < sqVar3.topMargin + this.x) {
                                i22 = sqVar3.topMargin + this.x;
                            } else {
                                int i23 = (((height - paddingBottom) - i7) - i22) - paddingTop2;
                                if (i23 < sqVar3.bottomMargin + this.y) {
                                    i22 = Math.max(0, i22 - ((sqVar4.bottomMargin + this.y) - i23));
                                }
                            }
                            paddingTop = paddingTop2 + i22;
                            break;
                    }
                    if (c != 1) {
                        int i24 = (z2 ? this.v : 0) - iArr[1];
                        min2 -= Math.max(0, i24);
                        iArr[1] = Math.max(0, -i24);
                        if (E) {
                            sq sqVar5 = (sq) this.b.getLayoutParams();
                            int measuredWidth = min2 - this.b.getMeasuredWidth();
                            int measuredHeight = this.b.getMeasuredHeight() + paddingTop;
                            this.b.layout(measuredWidth, paddingTop, min2, measuredHeight);
                            i14 = measuredWidth - this.w;
                            paddingTop = measuredHeight + sqVar5.bottomMargin;
                        } else {
                            i14 = min2;
                        }
                        if (E2) {
                            sq sqVar6 = (sq) this.c.getLayoutParams();
                            int i25 = paddingTop + sqVar6.topMargin;
                            this.c.layout(min2 - this.c.getMeasuredWidth(), i25, min2, this.c.getMeasuredHeight() + i25);
                            i15 = min2 - this.w;
                            int i26 = sqVar6.bottomMargin;
                        } else {
                            i15 = min2;
                        }
                        if (z2) {
                            min2 = Math.min(i14, i15);
                        }
                        max = i10;
                    } else {
                        int i27 = (z2 ? this.v : 0) - iArr[0];
                        max = i10 + Math.max(0, i27);
                        iArr[0] = Math.max(0, -i27);
                        if (E) {
                            sq sqVar7 = (sq) this.b.getLayoutParams();
                            int measuredWidth2 = this.b.getMeasuredWidth() + max;
                            int measuredHeight2 = this.b.getMeasuredHeight() + paddingTop;
                            this.b.layout(max, paddingTop, measuredWidth2, measuredHeight2);
                            i12 = measuredWidth2 + this.w;
                            paddingTop = measuredHeight2 + sqVar7.bottomMargin;
                        } else {
                            i12 = max;
                        }
                        if (E2) {
                            sq sqVar8 = (sq) this.c.getLayoutParams();
                            int i28 = paddingTop + sqVar8.topMargin;
                            int measuredWidth3 = this.c.getMeasuredWidth() + max;
                            this.c.layout(max, i28, measuredWidth3, this.c.getMeasuredHeight() + i28);
                            i13 = measuredWidth3 + this.w;
                            int i29 = sqVar8.bottomMargin;
                        } else {
                            i13 = max;
                        }
                        if (z2) {
                            max = Math.max(i12, i13);
                        }
                    }
                } else {
                    i9 = paddingLeft;
                    i11 = min;
                }
                A(this.G, 3);
                size = this.G.size();
                for (i16 = 0; i16 < size; i16++) {
                    max = x((View) this.G.get(i16), max, iArr, i11);
                }
                int i30 = i11;
                A(this.G, 5);
                size2 = this.G.size();
                for (i17 = 0; i17 < size2; i17++) {
                    min2 = y((View) this.G.get(i17), min2, iArr, i30);
                }
                A(this.G, 1);
                ArrayList arrayList = this.G;
                int i31 = iArr[0];
                int i32 = iArr[1];
                size3 = arrayList.size();
                i18 = 0;
                int i33 = 0;
                while (i18 < size3) {
                    View view = (View) arrayList.get(i18);
                    sq sqVar9 = (sq) view.getLayoutParams();
                    int i34 = sqVar9.leftMargin - i31;
                    int i35 = sqVar9.rightMargin - i32;
                    int max2 = Math.max(0, i34);
                    int max3 = Math.max(0, i35);
                    int max4 = Math.max(0, -i34);
                    int max5 = Math.max(0, -i35);
                    i33 += max2 + view.getMeasuredWidth() + max3;
                    i18++;
                    i32 = max5;
                    i31 = max4;
                }
                i20 = (i9 + (((i8 - i9) - paddingRight) / 2)) - (i33 / 2);
                int i36 = i33 + i20;
                if (i20 >= max) {
                    max = i36 > min2 ? i20 - (i36 - min2) : i20;
                }
                size4 = this.G.size();
                for (i19 = 0; i19 < size4; i19++) {
                    max = x((View) this.G.get(i19), max, iArr, i30);
                }
                this.G.clear();
            }
            i5 = x(this.d, paddingLeft, iArr, min);
        }
        i6 = i21;
        if (E(this.g)) {
        }
        if (E(this.a)) {
        }
        if (hs.c(this) != 1) {
        }
        if (hs.c(this) != 1) {
        }
        iArr[0] = Math.max(0, c2 - i5);
        iArr[1] = Math.max(0, d2 - (i21 - i6));
        max = Math.max(i5, c2);
        int min22 = Math.min(i6, i21 - d2);
        if (E(this.h)) {
        }
        if (E(this.t)) {
        }
        E = E(this.b);
        E2 = E(this.c);
        if (E) {
        }
        if (E2) {
        }
        if (E) {
        }
        if (!E) {
        }
        if (!E2) {
        }
        sq sqVar32 = (sq) textView.getLayoutParams();
        sq sqVar42 = (sq) textView2.getLayoutParams();
        if (E) {
        }
        i9 = paddingLeft;
        switch (this.B & 112) {
            case 48:
                break;
            case 80:
                break;
        }
        if (c != 1) {
        }
        A(this.G, 3);
        size = this.G.size();
        while (i16 < size) {
        }
        int i302 = i11;
        A(this.G, 5);
        size2 = this.G.size();
        while (i17 < size2) {
        }
        A(this.G, 1);
        ArrayList arrayList2 = this.G;
        int i312 = iArr[0];
        int i322 = iArr[1];
        size3 = arrayList2.size();
        i18 = 0;
        int i332 = 0;
        while (i18 < size3) {
        }
        i20 = (i9 + (((i8 - i9) - paddingRight) / 2)) - (i332 / 2);
        int i362 = i332 + i20;
        if (i20 >= max) {
        }
        size4 = this.G.size();
        while (i19 < size4) {
        }
        this.G.clear();
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.H;
        boolean b = tb.b(this);
        int i9 = !b ? 1 : 0;
        int i10 = 0;
        if (E(this.d)) {
            H(this.d, i, 0, i2, this.u);
            i3 = this.d.getMeasuredWidth() + F(this.d);
            i4 = Math.max(0, this.d.getMeasuredHeight() + G(this.d));
            i5 = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (E(this.g)) {
            H(this.g, i, 0, i2, this.u);
            i3 = this.g.getMeasuredWidth() + F(this.g);
            i4 = Math.max(i4, this.g.getMeasuredHeight() + G(this.g));
            i5 = View.combineMeasuredStates(i5, this.g.getMeasuredState());
        }
        int d = d();
        int max = Math.max(d, i3);
        iArr[b ? 1 : 0] = Math.max(0, d - i3);
        if (E(this.a)) {
            H(this.a, i, max, i2, this.u);
            i6 = this.a.getMeasuredWidth() + F(this.a);
            i4 = Math.max(i4, this.a.getMeasuredHeight() + G(this.a));
            i5 = View.combineMeasuredStates(i5, this.a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int c = c();
        int max2 = max + Math.max(c, i6);
        iArr[i9] = Math.max(0, c - i6);
        if (E(this.h)) {
            max2 += z(this.h, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.h.getMeasuredHeight() + G(this.h));
            i5 = View.combineMeasuredStates(i5, this.h.getMeasuredState());
        }
        if (E(this.t)) {
            max2 += z(this.t, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.t.getMeasuredHeight() + G(this.t));
            i5 = View.combineMeasuredStates(i5, this.t.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((sq) childAt.getLayoutParams()).b == 0 && E(childAt)) {
                max2 += z(childAt, i, max2, i2, 0, iArr);
                i4 = Math.max(i4, childAt.getMeasuredHeight() + G(childAt));
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i12 = this.x + this.y;
        int i13 = this.v + this.w;
        if (E(this.b)) {
            z(this.b, i, max2 + i13, i2, i12, iArr);
            i10 = this.b.getMeasuredWidth() + F(this.b);
            int measuredHeight = this.b.getMeasuredHeight() + G(this.b);
            i7 = View.combineMeasuredStates(i5, this.b.getMeasuredState());
            i8 = measuredHeight;
        } else {
            i7 = i5;
            i8 = 0;
        }
        if (E(this.c)) {
            i10 = Math.max(i10, z(this.c, i, max2 + i13, i2, i8 + i12, iArr));
            i8 += this.c.getMeasuredHeight() + G(this.c);
            i7 = View.combineMeasuredStates(i7, this.c.getMeasuredState());
        }
        int max3 = Math.max(i4, i8);
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max2 + i10 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, (-16777216) & i7), View.resolveSizeAndState(Math.max(max3 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i7 << 16));
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof ss)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ss ssVar = (ss) parcelable;
        super.onRestoreInstanceState(ssVar.d);
        ActionMenuView actionMenuView = this.a;
        lo loVar = actionMenuView != null ? actionMenuView.a : null;
        int i = ssVar.a;
        if (i != 0 && this.s != null && loVar != null && (findItem = loVar.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (ssVar.b) {
            removeCallbacks(this.J);
            post(this.J);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        i();
        rx rxVar = this.n;
        boolean z = i == 1;
        if (z == rxVar.g) {
            return;
        }
        rxVar.g = z;
        if (!rxVar.h) {
            rxVar.a = rxVar.e;
            rxVar.b = rxVar.f;
            return;
        }
        if (z) {
            int i2 = rxVar.d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = rxVar.e;
            }
            rxVar.a = i2;
            int i3 = rxVar.c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = rxVar.f;
            }
            rxVar.b = i3;
            return;
        }
        int i4 = rxVar.c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = rxVar.e;
        }
        rxVar.a = i4;
        int i5 = rxVar.d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = rxVar.f;
        }
        rxVar.b = i5;
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        lr lrVar;
        ss ssVar = new ss(super.onSaveInstanceState());
        sp spVar = this.s;
        if (spVar != null && (lrVar = spVar.b) != null) {
            ssVar.a = lrVar.a;
        }
        ssVar.b = r();
        return ssVar;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.E = false;
            actionMasked = 0;
        }
        if (!this.E) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0) {
                if (!onTouchEvent) {
                    this.E = true;
                }
                actionMasked = 0;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.E = false;
        }
        return true;
    }

    public final void p(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.c;
            if (textView != null && D(textView)) {
                removeView(this.c);
                this.q.remove(this.c);
            }
        } else {
            if (this.c == null) {
                Context context = getContext();
                on onVar = new on(context);
                this.c = onVar;
                onVar.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.D;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!D(this.c)) {
                B(this.c, true);
            }
        }
        TextView textView2 = this.c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.p = charSequence;
    }

    public final void q(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.b;
            if (textView != null && D(textView)) {
                removeView(this.b);
                this.q.remove(this.b);
            }
        } else {
            if (this.b == null) {
                Context context = getContext();
                on onVar = new on(context);
                this.b = onVar;
                onVar.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.k;
                if (i != 0) {
                    this.b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.C;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!D(this.b)) {
                B(this.b, true);
            }
        }
        TextView textView2 = this.b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.o = charSequence;
    }

    public final boolean r() {
        mz mzVar;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (mzVar = actionMenuView.c) == null || !mzVar.l()) ? false : true;
    }

    public final boolean s() {
        mz mzVar;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (mzVar = actionMenuView.c) == null || !mzVar.m()) ? false : true;
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    @Override // android.view.ViewGroup
    protected final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return u(layoutParams);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.B = 8388627;
        this.G = new ArrayList();
        this.q = new ArrayList();
        this.H = new int[2];
        this.K = new hp();
        this.J = new sn(this);
        sm q = sm.q(getContext(), attributeSet, ki.w, i);
        hs.L(this, context, ki.w, attributeSet, q.b, i);
        this.k = q.f(28, 0);
        this.l = q.f(19, 0);
        this.B = q.d(0, this.B);
        this.m = q.d(2, 48);
        int a = q.a(22, 0);
        a = q.p(27) ? q.a(27, a) : a;
        this.y = a;
        this.x = a;
        this.w = a;
        this.v = a;
        int a2 = q.a(25, -1);
        if (a2 >= 0) {
            this.v = a2;
        }
        int a3 = q.a(24, -1);
        if (a3 >= 0) {
            this.w = a3;
        }
        int a4 = q.a(26, -1);
        if (a4 >= 0) {
            this.x = a4;
        }
        int a5 = q.a(23, -1);
        if (a5 >= 0) {
            this.y = a5;
        }
        this.u = q.b(13, -1);
        int a6 = q.a(9, Integer.MIN_VALUE);
        int a7 = q.a(5, Integer.MIN_VALUE);
        int b = q.b(7, 0);
        int b2 = q.b(8, 0);
        i();
        rx rxVar = this.n;
        rxVar.h = false;
        if (b != Integer.MIN_VALUE) {
            rxVar.e = b;
            rxVar.a = b;
        }
        if (b2 != Integer.MIN_VALUE) {
            rxVar.f = b2;
            rxVar.b = b2;
        }
        if (a6 != Integer.MIN_VALUE || a7 != Integer.MIN_VALUE) {
            rxVar.a(a6, a7);
        }
        this.z = q.a(10, Integer.MIN_VALUE);
        this.A = q.a(6, Integer.MIN_VALUE);
        this.e = q.h(4);
        this.f = q.l(3);
        CharSequence l = q.l(21);
        if (!TextUtils.isEmpty(l)) {
            q(l);
        }
        CharSequence l2 = q.l(18);
        if (!TextUtils.isEmpty(l2)) {
            p(l2);
        }
        this.i = getContext();
        o(q.f(17, 0));
        Drawable h = q.h(16);
        if (h != null) {
            n(h);
        }
        CharSequence l3 = q.l(15);
        if (!TextUtils.isEmpty(l3)) {
            m(l3);
        }
        Drawable h2 = q.h(11);
        if (h2 != null) {
            l(h2);
        }
        CharSequence l4 = q.l(12);
        if (!TextUtils.isEmpty(l4)) {
            if (!TextUtils.isEmpty(l4)) {
                C();
            }
            ImageView imageView = this.t;
            if (imageView != null) {
                imageView.setContentDescription(l4);
            }
        }
        if (q.p(29)) {
            ColorStateList g = q.g(29);
            this.C = g;
            TextView textView = this.b;
            if (textView != null) {
                textView.setTextColor(g);
            }
        }
        if (q.p(20)) {
            ColorStateList g2 = q.g(20);
            this.D = g2;
            TextView textView2 = this.c;
            if (textView2 != null) {
                textView2.setTextColor(g2);
            }
        }
        if (q.p(14)) {
            int f = q.f(14, 0);
            ku kuVar = new ku(getContext());
            j();
            ActionMenuView actionMenuView = this.a;
            if (actionMenuView.a == null) {
                Menu g3 = actionMenuView.g();
                if (this.s == null) {
                    this.s = new sp(this);
                }
                this.a.c.o();
                ((lo) g3).h(this.s, this.i);
            }
            kuVar.inflate(f, this.a.g());
        }
        q.n();
    }
}
