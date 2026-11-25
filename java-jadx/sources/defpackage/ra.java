package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.preference.Preference;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ra {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public int E;
    private final sx a;
    private final sx b;
    or q;
    public RecyclerView r;
    public final sy s;
    public final sy t;
    public rn u;
    public boolean v;
    public boolean w;
    public final boolean x;
    public final boolean y;
    public int z;

    public ra() {
        qy qyVar = new qy(this, 1);
        this.a = qyVar;
        qy qyVar2 = new qy(this, 0);
        this.b = qyVar2;
        this.s = new sy(qyVar);
        this.t = new sy(qyVar2);
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = true;
    }

    public static boolean aV(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        switch (mode) {
            case Integer.MIN_VALUE:
                if (size >= i) {
                }
                break;
            case 0:
                break;
            case 1073741824:
                if (size == i) {
                }
                break;
        }
        return false;
    }

    public static int aj(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(size, Math.max(i2, i3));
            case 1073741824:
                return size;
            default:
                return Math.max(i2, i3);
        }
    }

    public static int al(int i, int i2, int i3, int i4, boolean z) {
        int max = Math.max(0, i - i3);
        if (z) {
            if (i4 >= 0) {
                i2 = 1073741824;
            } else {
                if (i4 == -1) {
                    switch (i2) {
                        case Integer.MIN_VALUE:
                        case 1073741824:
                            i4 = max;
                            break;
                    }
                }
                i2 = 0;
                i4 = 0;
            }
        } else if (i4 >= 0) {
            i2 = 1073741824;
        } else {
            if (i4 != -1) {
                if (i4 == -2) {
                    i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                }
                i2 = 0;
                i4 = 0;
            }
            i4 = max;
        }
        return View.MeasureSpec.makeMeasureSpec(i4, i2);
    }

    public static qz au(Context context, AttributeSet attributeSet, int i, int i2) {
        qz qzVar = new qz();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, kl.a, i, i2);
        qzVar.a = obtainStyledAttributes.getInt(0, 1);
        qzVar.b = obtainStyledAttributes.getInt(10, 1);
        qzVar.c = obtainStyledAttributes.getBoolean(9, false);
        qzVar.d = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return qzVar;
    }

    public static final int ba(View view) {
        return view.getBottom() + ((rb) view.getLayoutParams()).d.bottom;
    }

    public static final int bb(View view) {
        return view.getLeft() - ((rb) view.getLayoutParams()).d.left;
    }

    public static final int bc(View view) {
        Rect rect = ((rb) view.getLayoutParams()).d;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public static final int bd(View view) {
        Rect rect = ((rb) view.getLayoutParams()).d;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public static final int be(View view) {
        return view.getRight() + ((rb) view.getLayoutParams()).d.right;
    }

    public static final int bf(View view) {
        return view.getTop() - ((rb) view.getLayoutParams()).d.top;
    }

    public static final int bg(View view) {
        return ((rb) view.getLayoutParams()).a();
    }

    public static final void bj(View view, int i, int i2, int i3, int i4) {
        rb rbVar = (rb) view.getLayoutParams();
        Rect rect = rbVar.d;
        view.layout(i + rect.left + rbVar.leftMargin, i2 + rect.top + rbVar.topMargin, (i3 - rect.right) - rbVar.rightMargin, (i4 - rect.bottom) - rbVar.bottomMargin);
    }

    private final void c(View view, int i, boolean z) {
        rr h = RecyclerView.h(view);
        if (z || h.isRemoved()) {
            this.r.g.b(h);
        } else {
            this.r.g.g(h);
        }
        rb rbVar = (rb) view.getLayoutParams();
        if (h.wasReturnedFromScrap() || h.isScrap()) {
            if (h.isScrap()) {
                h.unScrap();
            } else {
                h.clearReturnedFromScrapFlag();
            }
            this.q.h(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.r) {
            int d = this.q.d(view);
            if (i == -1) {
                i = this.q.a();
            }
            if (d == -1) {
                throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.r.indexOfChild(view) + this.r.k());
            }
            if (d != i) {
                ra raVar = this.r.l;
                View aw = raVar.aw(d);
                if (aw == null) {
                    throw new IllegalArgumentException("Cannot move a child from non-existing index:" + d + raVar.r.toString());
                }
                raVar.aE(d);
                rb rbVar2 = (rb) aw.getLayoutParams();
                rr h2 = RecyclerView.h(aw);
                if (h2.isRemoved()) {
                    raVar.r.g.b(h2);
                } else {
                    raVar.r.g.g(h2);
                }
                raVar.q.h(aw, i, rbVar2, h2.isRemoved());
            }
        } else {
            this.q.g(view, i, false);
            rbVar.e = true;
            rn rnVar = this.u;
            if (rnVar != null && rnVar.e && rn.i(view) == rnVar.a) {
                rnVar.f = view;
            }
        }
        if (rbVar.f) {
            h.itemView.invalidate();
            rbVar.f = false;
        }
    }

    public int A(ro roVar) {
        throw null;
    }

    public int B(ro roVar) {
        throw null;
    }

    public int C(ro roVar) {
        throw null;
    }

    public int D(ro roVar) {
        throw null;
    }

    public int E(ro roVar) {
        throw null;
    }

    public int F(ro roVar) {
        throw null;
    }

    public Parcelable L() {
        throw null;
    }

    public View N(int i) {
        int ak = ak();
        for (int i2 = 0; i2 < ak; i2++) {
            View aw = aw(i2);
            rr h = RecyclerView.h(aw);
            if (h != null && h.getLayoutPosition() == i && !h.shouldIgnore() && (this.r.H.g || !h.isRemoved())) {
                return aw;
            }
        }
        return null;
    }

    public void O(String str) {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            recyclerView.r(str);
        }
    }

    public void R(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.r;
        rh rhVar = recyclerView.c;
        ro roVar = recyclerView.H;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1) && !this.r.canScrollVertically(-1) && !this.r.canScrollHorizontally(-1) && !this.r.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        qq qqVar = this.r.k;
        if (qqVar != null) {
            accessibilityEvent.setItemCount(qqVar.getItemCount());
        }
    }

    public void S(Parcelable parcelable) {
        throw null;
    }

    public void T(int i) {
        throw null;
    }

    public boolean W() {
        throw null;
    }

    public boolean X() {
        throw null;
    }

    public boolean Y() {
        throw null;
    }

    public int a(rh rhVar, ro roVar) {
        return -1;
    }

    public final void aA(View view) {
        aB(view, -1);
    }

    public final void aB(View view, int i) {
        c(view, i, false);
    }

    public final void aC(View view, Rect rect) {
        RecyclerView recyclerView = this.r;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.d(view));
        }
    }

    public final void aD(rh rhVar) {
        for (int ak = ak() - 1; ak >= 0; ak--) {
            View aw = aw(ak);
            rr h = RecyclerView.h(aw);
            if (!h.shouldIgnore()) {
                if (!h.isInvalid() || h.isRemoved() || this.r.k.hasStableIds()) {
                    aE(ak);
                    rhVar.k(aw);
                    this.r.g.g(h);
                } else {
                    aN(ak);
                    rhVar.j(h);
                }
            }
        }
    }

    public final void aE(int i) {
        aw(i);
        this.q.i(i);
    }

    public void aF(int i) {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            int a = recyclerView.f.a();
            for (int i2 = 0; i2 < a; i2++) {
                recyclerView.f.e(i2).offsetLeftAndRight(i);
            }
        }
    }

    public void aG(int i) {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            int a = recyclerView.f.a();
            for (int i2 = 0; i2 < a; i2++) {
                recyclerView.f.e(i2).offsetTopAndBottom(i);
            }
        }
    }

    public final void aH(View view, ik ikVar) {
        rr h = RecyclerView.h(view);
        if (h == null || h.isRemoved() || this.q.k(h.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.r;
        m(recyclerView.c, recyclerView.H, view, ikVar);
    }

    public void aI(int i) {
    }

    public final void aJ(rh rhVar) {
        for (int ak = ak() - 1; ak >= 0; ak--) {
            if (!RecyclerView.h(aw(ak)).shouldIgnore()) {
                aM(ak, rhVar);
            }
        }
    }

    public final void aK(rh rhVar) {
        int size = rhVar.a.size();
        for (int i = size - 1; i >= 0; i--) {
            View view = ((rr) rhVar.a.get(i)).itemView;
            rr h = RecyclerView.h(view);
            if (!h.shouldIgnore()) {
                h.setIsRecyclable(false);
                if (h.isTmpDetached()) {
                    this.r.removeDetachedView(view, false);
                }
                qv qvVar = this.r.B;
                if (qvVar != null) {
                    qvVar.h(h);
                }
                h.setIsRecyclable(true);
                rhVar.f(view);
            }
        }
        rhVar.a.clear();
        ArrayList arrayList = rhVar.b;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (size > 0) {
            this.r.invalidate();
        }
    }

    public final void aL(View view, rh rhVar) {
        or orVar = this.q;
        int h = orVar.c.h(view);
        if (h >= 0) {
            if (orVar.a.g(h)) {
                orVar.l(view);
            }
            orVar.c.k(h);
        }
        rhVar.i(view);
    }

    public final void aM(int i, rh rhVar) {
        View aw = aw(i);
        aN(i);
        rhVar.i(aw);
    }

    public final void aN(int i) {
        or orVar;
        int b;
        View i2;
        if (aw(i) == null || (i2 = orVar.c.i((b = (orVar = this.q).b(i)))) == null) {
            return;
        }
        if (orVar.a.g(b)) {
            orVar.l(i2);
        }
        orVar.c.k(b);
    }

    public final void aO() {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public final void aP(RecyclerView recyclerView) {
        aQ(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public final void aQ(int i, int i2) {
        this.D = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.B = mode;
        if (mode == 0) {
            int i3 = RecyclerView.O;
        }
        this.E = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.C = mode2;
        if (mode2 == 0) {
            int i4 = RecyclerView.O;
        }
    }

    public final void aR(int i, int i2) {
        this.r.setMeasuredDimension(i, i2);
    }

    public final void aS(int i, int i2) {
        int ak = ak();
        if (ak == 0) {
            this.r.w(i, i2);
            return;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MIN_VALUE;
        int i5 = Preference.DEFAULT_ORDER;
        int i6 = Preference.DEFAULT_ORDER;
        for (int i7 = 0; i7 < ak; i7++) {
            View aw = aw(i7);
            Rect rect = this.r.i;
            RecyclerView.G(aw, rect);
            if (rect.left < i5) {
                i5 = rect.left;
            }
            if (rect.right > i3) {
                i3 = rect.right;
            }
            if (rect.top < i6) {
                i6 = rect.top;
            }
            if (rect.bottom > i4) {
                i4 = rect.bottom;
            }
        }
        this.r.i.set(i5, i6, i3, i4);
        p(this.r.i, i, i2);
    }

    public final void aT(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.r = null;
            this.q = null;
            this.D = 0;
            this.E = 0;
        } else {
            this.r = recyclerView;
            this.q = recyclerView.f;
            this.D = recyclerView.getWidth();
            this.E = recyclerView.getHeight();
        }
        this.B = 1073741824;
        this.C = 1073741824;
    }

    public final void aU(rn rnVar) {
        rn rnVar2 = this.u;
        if (rnVar2 != null && rnVar != rnVar2 && rnVar2.e) {
            rnVar2.c();
        }
        this.u = rnVar;
        RecyclerView recyclerView = this.r;
        recyclerView.E.c();
        if (rnVar.g) {
            Log.w("RecyclerView", "An instance of " + rnVar.getClass().getSimpleName() + " was started more than once. Each instance of" + rnVar.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        rnVar.b = recyclerView;
        rnVar.c = this;
        int i = rnVar.a;
        if (i == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        RecyclerView recyclerView2 = rnVar.b;
        recyclerView2.H.a = i;
        rnVar.e = true;
        rnVar.d = true;
        rnVar.f = recyclerView2.l.N(rnVar.a);
        rnVar.b.E.a();
        rnVar.g = true;
    }

    public final boolean aW() {
        rn rnVar = this.u;
        return rnVar != null && rnVar.e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b6, code lost:
    
        if ((r11.bottom - r3) > r6) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ba, code lost:
    
        if (r3 != 0) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean aX(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int[] iArr = new int[2];
        int ar = ar();
        int at = at();
        int i = this.D;
        int as = as();
        int i2 = this.E;
        int aq = aq();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int width = rect.width();
        int height = rect.height();
        int i3 = left - ar;
        int i4 = 0;
        int min = Math.min(0, i3);
        int i5 = top - at;
        int min2 = Math.min(0, i5);
        int i6 = (left + width) - (i - as);
        int max = Math.max(0, i6);
        int max2 = Math.max(0, (top + height) - (i2 - aq));
        if (an() == 1) {
            min = max != 0 ? max : Math.max(min, i6);
        } else if (min == 0) {
            min = Math.min(i3, max);
        }
        if (min2 == 0) {
            min2 = Math.min(i5, max2);
        }
        iArr[0] = min;
        iArr[1] = min2;
        int i7 = iArr[0];
        int i8 = iArr[1];
        if (z2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int ar2 = ar();
                int at2 = at();
                int i9 = this.D;
                int as2 = as();
                int aq2 = this.E - aq();
                Rect rect2 = this.r.i;
                RecyclerView.G(focusedChild, rect2);
                if (rect2.left - i7 < i9 - as2) {
                    if (rect2.right - i7 > ar2) {
                        if (rect2.top - i8 < aq2) {
                        }
                    }
                }
            }
            return false;
        }
        if (i7 != 0) {
            i4 = i7;
        }
        if (z) {
            recyclerView.scrollBy(i4, i8);
        } else {
            recyclerView.ab(i4, i8);
        }
        return true;
    }

    public final boolean aY(View view, int i, int i2, rb rbVar) {
        return (!view.isLayoutRequested() && this.x && aV(view.getWidth(), i, rbVar.width) && aV(view.getHeight(), i2, rbVar.height)) ? false : true;
    }

    public final void aZ() {
        this.w = true;
    }

    public boolean ab() {
        return false;
    }

    public void ac(int i, int i2, ro roVar, pn pnVar) {
        throw null;
    }

    public void ad(int i, pn pnVar) {
    }

    public void ah(RecyclerView recyclerView) {
    }

    public void ai(RecyclerView recyclerView, int i) {
        throw null;
    }

    public final int ak() {
        or orVar = this.q;
        if (orVar != null) {
            return orVar.a();
        }
        return 0;
    }

    public final int am() {
        RecyclerView recyclerView = this.r;
        qq e = recyclerView != null ? recyclerView.e() : null;
        if (e != null) {
            return e.getItemCount();
        }
        return 0;
    }

    public final int an() {
        return hs.c(this.r);
    }

    public final int ao() {
        return hs.d(this.r);
    }

    public final int ap() {
        return hs.e(this.r);
    }

    public final int aq() {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final int ar() {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int as() {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int at() {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public final View av(View view) {
        View j;
        RecyclerView recyclerView = this.r;
        if (recyclerView == null || (j = recyclerView.j(view)) == null || this.q.k(j)) {
            return null;
        }
        return j;
    }

    public final View aw(int i) {
        or orVar = this.q;
        if (orVar != null) {
            return orVar.e(i);
        }
        return null;
    }

    public final View ax() {
        View focusedChild;
        RecyclerView recyclerView = this.r;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.q.k(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public final void ay(View view) {
        az(view, -1);
    }

    public final void az(View view, int i) {
        c(view, i, true);
    }

    public int b(rh rhVar, ro roVar) {
        return -1;
    }

    public final void bh(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((rb) view.getLayoutParams()).d;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.r != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.r.j;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public final boolean bi(View view) {
        return (this.s.b(view) && this.t.b(view)) ? false : true;
    }

    public void bk() {
    }

    public final void bl(int i, int i2) {
        this.r.w(i, i2);
    }

    public final void bm(Runnable runnable) {
        RecyclerView recyclerView = this.r;
        if (recyclerView != null) {
            recyclerView.removeCallbacks(runnable);
        }
    }

    public final void bn(RecyclerView recyclerView) {
        this.w = false;
        ah(recyclerView);
    }

    public int d(int i, rh rhVar, ro roVar) {
        throw null;
    }

    public int e(int i, rh rhVar, ro roVar) {
        throw null;
    }

    public abstract rb f();

    public rb g(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof rb ? new rb((rb) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new rb((ViewGroup.MarginLayoutParams) layoutParams) : new rb(layoutParams);
    }

    public rb h(Context context, AttributeSet attributeSet) {
        return new rb(context, attributeSet);
    }

    public View j(View view, int i, rh rhVar, ro roVar) {
        throw null;
    }

    public void m(rh rhVar, ro roVar, View view, ik ikVar) {
    }

    public void n(rh rhVar, ro roVar) {
        throw null;
    }

    public void o(ro roVar) {
    }

    public void p(Rect rect, int i, int i2) {
        int width = rect.width();
        int ar = ar();
        int as = as();
        int height = rect.height();
        int at = at();
        aR(aj(i, width + ar + as, ap()), aj(i2, height + at + aq(), ao()));
    }

    public boolean s(rb rbVar) {
        return rbVar != null;
    }

    public boolean t() {
        throw null;
    }

    public void v(int i, int i2) {
    }

    public void w() {
    }

    public void x(int i, int i2) {
    }

    public void y(int i, int i2) {
    }

    public void z(int i, int i2) {
    }
}
