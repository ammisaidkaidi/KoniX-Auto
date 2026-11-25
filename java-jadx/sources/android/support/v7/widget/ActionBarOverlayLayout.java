package android.support.v7.widget;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.preference.Preference;
import com.google.android.embedded.projection.R;
import defpackage.eh;
import defpackage.gv;
import defpackage.gw;
import defpackage.hs;
import defpackage.hx;
import defpackage.ih;
import defpackage.kh;
import defpackage.kw;
import defpackage.mb;
import defpackage.mp;
import defpackage.mq;
import defpackage.mr;
import defpackage.ms;
import defpackage.os;
import defpackage.ot;
import defpackage.qu;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements os, gv, gw {
    static final int[] a = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    private final Runnable A;
    private final qu B;
    public int b;
    public ActionBarContainer c;
    public boolean d;
    public boolean e;
    public boolean f;
    public int g;
    public mr h;
    public ViewPropertyAnimator i;
    public final AnimatorListenerAdapter j;
    private int k;
    private ContentFrameLayout l;
    private ot m;
    private Drawable n;
    private boolean o;
    private boolean p;
    private int q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private ih u;
    private ih v;
    private ih w;
    private ih x;
    private OverScroller y;
    private final Runnable z;

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    private final void v(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(a);
        this.k = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.n = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.o = context.getApplicationInfo().targetSdkVersion < 19;
        this.y = new OverScroller(context);
    }

    private static final boolean w(View view, Rect rect, boolean z) {
        boolean z2;
        ms msVar = (ms) view.getLayoutParams();
        if (msVar.leftMargin != rect.left) {
            msVar.leftMargin = rect.left;
            z2 = true;
        } else {
            z2 = false;
        }
        if (msVar.topMargin != rect.top) {
            msVar.topMargin = rect.top;
            z2 = true;
        }
        if (msVar.rightMargin != rect.right) {
            msVar.rightMargin = rect.right;
            z2 = true;
        }
        if (!z || msVar.bottomMargin == rect.bottom) {
            return z2;
        }
        msVar.bottomMargin = rect.bottom;
        return true;
    }

    @Override // defpackage.gv
    public final void a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // defpackage.gv
    public final void b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.gv
    public final void c(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ms;
    }

    @Override // defpackage.gv
    public final boolean d(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.n == null || this.o) {
            return;
        }
        int bottom = this.c.getVisibility() == 0 ? (int) (this.c.getBottom() + this.c.getTranslationY() + 0.5f) : 0;
        this.n.setBounds(0, bottom, getWidth(), this.n.getIntrinsicHeight() + bottom);
        this.n.draw(canvas);
    }

    @Override // defpackage.gv
    public final void e(int i, int i2, int[] iArr, int i3) {
    }

    @Override // defpackage.gw
    public final void f(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        a(view, i, i2, i3, i4, i5);
    }

    @Override // defpackage.os
    public final void g() {
        j();
        this.m.e();
    }

    @Override // android.view.ViewGroup
    protected final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ms();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ms(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        return this.B.b();
    }

    public final void h() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        ViewPropertyAnimator viewPropertyAnimator = this.i;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // defpackage.os
    public final void i(int i) {
        j();
        switch (i) {
            case 2:
                this.m.g();
                break;
            case 5:
                this.m.f();
                break;
            case 109:
                this.d = true;
                this.o = getContext().getApplicationInfo().targetSdkVersion < 19;
                break;
        }
    }

    final void j() {
        ot f;
        if (this.l == null) {
            this.l = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.c = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof ot) {
                f = (ot) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(String.valueOf(findViewById.getClass().getSimpleName())));
                }
                f = ((Toolbar) findViewById).f();
            }
            this.m = f;
        }
    }

    public final void k(int i) {
        h();
        this.c.setTranslationY(-Math.max(0, Math.min(i, this.c.getHeight())));
    }

    public final void l(boolean z) {
        if (z != this.p) {
            this.p = z;
            if (z) {
                return;
            }
            h();
            k(0);
        }
    }

    @Override // defpackage.os
    public final void m(Menu menu, mb mbVar) {
        j();
        this.m.j(menu, mbVar);
    }

    @Override // defpackage.os
    public final void n() {
        j();
        this.m.k();
    }

    @Override // defpackage.os
    public final void o(Window.Callback callback) {
        j();
        this.m.n(callback);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005d, code lost:
    
        if (r0 != false) goto L9;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        j();
        ih l = ih.l(windowInsets, this);
        boolean w = w(this.c, new Rect(l.b(), l.d(), l.c(), l.a()), false);
        hs.J(this, l, this.r);
        ih i = l.i(this.r.left, this.r.top, this.r.right, this.r.bottom);
        this.u = i;
        if (!this.v.equals(i)) {
            this.v = this.u;
            w = true;
        }
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
        }
        requestLayout();
        return l.f().h().g().m();
    }

    @Override // android.view.View
    protected final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        v(getContext());
        hs.t(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ms msVar = (ms) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = msVar.leftMargin + paddingLeft;
                int i7 = msVar.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        j();
        measureChildWithMargins(this.c, i, 0, i2, 0);
        ms msVar = (ms) this.c.getLayoutParams();
        int max = Math.max(0, this.c.getMeasuredWidth() + msVar.leftMargin + msVar.rightMargin);
        int max2 = Math.max(0, this.c.getMeasuredHeight() + msVar.topMargin + msVar.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.c.getMeasuredState());
        int f = hs.f(this) & 256;
        int measuredHeight = f != 0 ? this.k : this.c.getVisibility() != 8 ? this.c.getMeasuredHeight() : 0;
        this.t.set(this.r);
        ih ihVar = this.u;
        this.w = ihVar;
        if (this.d || f != 0) {
            eh b = eh.b(ihVar.b(), this.w.d() + measuredHeight, this.w.c(), this.w.a());
            hx hxVar = new hx(this.w);
            hxVar.b(b);
            this.w = hxVar.a();
        } else {
            this.t.top += measuredHeight;
            Rect rect = this.t;
            rect.bottom = rect.bottom;
            this.w = this.w.i(0, measuredHeight, 0, 0);
        }
        w(this.l, this.t, true);
        if (!this.x.equals(this.w)) {
            ih ihVar2 = this.w;
            this.x = ihVar2;
            hs.K(this.l, ihVar2);
        }
        measureChildWithMargins(this.l, i, 0, i2, 0);
        ms msVar2 = (ms) this.l.getLayoutParams();
        int max3 = Math.max(max, this.l.getMeasuredWidth() + msVar2.leftMargin + msVar2.rightMargin);
        int max4 = Math.max(max2, this.l.getMeasuredHeight() + msVar2.topMargin + msVar2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.l.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.p || !z) {
            return false;
        }
        this.y.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Preference.DEFAULT_ORDER);
        if (this.y.getFinalY() > this.c.getHeight()) {
            h();
            this.A.run();
        } else {
            h();
            this.z.run();
        }
        this.f = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.q + i2;
        this.q = i5;
        k(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        kh khVar;
        kw kwVar;
        this.B.c(i, 0);
        ActionBarContainer actionBarContainer = this.c;
        this.q = actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
        h();
        mr mrVar = this.h;
        if (mrVar == null || (kwVar = (khVar = (kh) mrVar).m) == null) {
            return;
        }
        kwVar.a();
        khVar.m = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.c.getVisibility() != 0) {
            return false;
        }
        return this.p;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.p || this.f) {
            return;
        }
        if (this.q <= this.c.getHeight()) {
            h();
            postDelayed(this.z, 600L);
        } else {
            h();
            postDelayed(this.A, 600L);
        }
    }

    @Override // android.view.View
    @Deprecated
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        j();
        int i2 = this.g ^ i;
        this.g = i;
        int i3 = i & 4;
        int i4 = i & 256;
        mr mrVar = this.h;
        if (mrVar != null) {
            kh khVar = (kh) mrVar;
            khVar.k = i4 == 0;
            if (i3 == 0 || i4 == 0) {
                if (khVar.l) {
                    khVar.l = false;
                    khVar.j(true);
                }
            } else if (!khVar.l) {
                khVar.l = true;
                khVar.j(true);
            }
        }
        if ((i2 & 256) == 0 || this.h == null) {
            return;
        }
        hs.t(this);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        mr mrVar = this.h;
        if (mrVar != null) {
            ((kh) mrVar).j = i;
        }
    }

    @Override // defpackage.os
    public final void p(CharSequence charSequence) {
        j();
        this.m.o(charSequence);
    }

    @Override // defpackage.os
    public final boolean q() {
        j();
        return this.m.p();
    }

    @Override // defpackage.os
    public final boolean r() {
        j();
        return this.m.r();
    }

    @Override // defpackage.os
    public final boolean s() {
        j();
        return this.m.s();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // defpackage.os
    public final boolean t() {
        j();
        return this.m.t();
    }

    @Override // defpackage.os
    public final boolean u() {
        j();
        return this.m.u();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        this.u = ih.a;
        this.v = ih.a;
        this.w = ih.a;
        this.x = ih.a;
        this.j = new mp(this);
        this.z = new mq(this, 1);
        this.A = new mq(this, 0);
        v(context);
        this.B = new qu();
    }

    @Override // android.view.ViewGroup
    protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ms(layoutParams);
    }
}
