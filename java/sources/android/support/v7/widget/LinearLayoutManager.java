package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import defpackage.ViewCompatApi26Statics;
import defpackage.LinearLayoutChunkResult;
import defpackage.LinearLayoutManagerAnchorInfo;
import defpackage.LayoutManagerFlagHolder;
import defpackage.OrientationHelperStateHolder;
import defpackage.LinearLayoutManagerSavedState;
import defpackage.RecyclerViewOrientationHelper;
import defpackage.ViewHolderFlagState;
import defpackage.RecyclerViewLayoutManager;
import defpackage.RecyclerViewLayoutParams;
import defpackage.RecyclerViewRecycler;
import defpackage.SmoothScrollerActionCallback;
import defpackage.RecyclerViewSmoothScroller;
import defpackage.RecyclerViewState;
import defpackage.RecyclerViewViewHolder;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerViewLayoutManager implements SmoothScrollerActionCallback {
    private OrientationHelperStateHolder a;
    private boolean b;
    private boolean c;
    private boolean d;
    private final LayoutManagerFlagHolder e;
    private int f;
    private int[] g;
    public int i;
    RecyclerViewOrientationHelper j;
    public boolean k;
    boolean l;
    int m;
    int n;
    LinearLayoutManagerSavedState o;
    final LinearLayoutManagerAnchorInfo p;

    public LinearLayoutManager() {
        this(1, false);
    }

    private final void bA(int i, int i2) {
        this.a.c = this.j.f() - i2;
        OrientationHelperStateHolder pyVar = this.a;
        pyVar.e = true != this.l ? 1 : -1;
        pyVar.d = i;
        pyVar.f = 1;
        pyVar.b = i2;
        pyVar.g = Integer.MIN_VALUE;
    }

    private final void bB(LinearLayoutManagerAnchorInfo pwVar) {
        bC(pwVar.b, pwVar.c);
    }

    private final void bC(int i, int i2) {
        this.a.c = i2 - this.j.j();
        OrientationHelperStateHolder pyVar = this.a;
        pyVar.d = i;
        pyVar.e = true != this.l ? -1 : 1;
        pyVar.f = -1;
        pyVar.b = i2;
        pyVar.g = Integer.MIN_VALUE;
    }

    private final int bo(RecyclerViewState roVar) {
        if (ak() == 0) {
            return 0;
        }
        Q();
        return ViewCompatApi26Statics.f(roVar, this.j, af(!this.d), ae(!this.d), this, this.d);
    }

    private final int bp(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar, boolean z) {
        int f;
        int f2 = this.j.f() - i;
        if (f2 <= 0) {
            return 0;
        }
        int i2 = -J(-f2, rhVar, roVar);
        int i3 = i + i2;
        if (!z || (f = this.j.f() - i3) <= 0) {
            return i2;
        }
        this.j.n(f);
        return f + i2;
    }

    private final int bq(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar, boolean z) {
        int j;
        int j2 = i - this.j.j();
        if (j2 <= 0) {
            return 0;
        }
        int i2 = -J(j2, rhVar, roVar);
        int i3 = i + i2;
        if (!z || (j = i3 - this.j.j()) <= 0) {
            return i2;
        }
        this.j.n(-j);
        return i2 - j;
    }

    private final View br() {
        return M(0, ak());
    }

    private final View bs() {
        return M(ak() - 1, -1);
    }

    private final View bt() {
        return aw(this.l ? 0 : ak() - 1);
    }

    private final View bu() {
        return aw(this.l ? ak() - 1 : 0);
    }

    private final void bv(RecyclerViewRecycler rhVar, OrientationHelperStateHolder pyVar) {
        if (!pyVar.a || pyVar.m) {
            return;
        }
        int i = pyVar.g;
        int i2 = pyVar.i;
        if (pyVar.f == -1) {
            int ak = ak();
            if (i < 0) {
                return;
            }
            int e = (this.j.e() - i) + i2;
            if (this.l) {
                for (int i3 = 0; i3 < ak; i3++) {
                    View aw = aw(i3);
                    if (this.j.d(aw) < e || this.j.m(aw) < e) {
                        bw(rhVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = ak - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View aw2 = aw(i5);
                if (this.j.d(aw2) < e || this.j.m(aw2) < e) {
                    bw(rhVar, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i >= 0) {
            int i6 = i - i2;
            int ak2 = ak();
            if (!this.l) {
                for (int i7 = 0; i7 < ak2; i7++) {
                    View aw3 = aw(i7);
                    if (this.j.a(aw3) > i6 || this.j.l(aw3) > i6) {
                        bw(rhVar, 0, i7);
                        return;
                    }
                }
                return;
            }
            int i8 = ak2 - 1;
            for (int i9 = i8; i9 >= 0; i9--) {
                View aw4 = aw(i9);
                if (this.j.a(aw4) > i6 || this.j.l(aw4) > i6) {
                    bw(rhVar, i8, i9);
                    return;
                }
            }
        }
    }

    private final void bx() {
        this.l = (this.i == 1 || !Z()) ? this.k : !this.k;
    }

    private final void by(int i, int i2, boolean z, RecyclerViewState roVar) {
        int j;
        this.a.m = aa();
        this.a.f = i;
        int[] iArr = this.g;
        iArr[0] = 0;
        iArr[1] = 0;
        P(roVar, iArr);
        int max = Math.max(0, this.g[0]);
        int max2 = Math.max(0, this.g[1]);
        OrientationHelperStateHolder pyVar = this.a;
        int i3 = i == 1 ? max2 : max;
        pyVar.h = i3;
        if (i != 1) {
            max = max2;
        }
        pyVar.i = max;
        if (i == 1) {
            pyVar.h = i3 + this.j.g();
            View bt = bt();
            OrientationHelperStateHolder pyVar2 = this.a;
            pyVar2.e = true == this.l ? -1 : 1;
            int bg = bg(bt);
            OrientationHelperStateHolder pyVar3 = this.a;
            pyVar2.d = bg + pyVar3.e;
            pyVar3.b = this.j.a(bt);
            j = this.j.a(bt) - this.j.f();
        } else {
            View bu = bu();
            this.a.h += this.j.j();
            OrientationHelperStateHolder pyVar4 = this.a;
            pyVar4.e = true != this.l ? -1 : 1;
            int bg2 = bg(bu);
            OrientationHelperStateHolder pyVar5 = this.a;
            pyVar4.d = bg2 + pyVar5.e;
            pyVar5.b = this.j.d(bu);
            j = (-this.j.d(bu)) + this.j.j();
        }
        OrientationHelperStateHolder pyVar6 = this.a;
        pyVar6.c = i2;
        if (z) {
            pyVar6.c = i2 - j;
        }
        pyVar6.g = j;
    }

    private final void bz(LinearLayoutManagerAnchorInfo pwVar) {
        bA(pwVar.b, pwVar.c);
    }

    private final int c(RecyclerViewState roVar) {
        if (ak() == 0) {
            return 0;
        }
        Q();
        return ViewCompatApi26Statics.d(roVar, this.j, af(!this.d), ae(!this.d), this, this.d);
    }

    private final int q(RecyclerViewState roVar) {
        if (ak() == 0) {
            return 0;
        }
        Q();
        return ViewCompatApi26Statics.e(roVar, this.j, af(!this.d), ae(!this.d), this, this.d, this.l);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int A(RecyclerViewState roVar) {
        return c(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int B(RecyclerViewState roVar) {
        return q(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int C(RecyclerViewState roVar) {
        return bo(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int D(RecyclerViewState roVar) {
        return c(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int E(RecyclerViewState roVar) {
        return q(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int F(RecyclerViewState roVar) {
        return bo(roVar);
    }

    final int H(RecyclerViewRecycler rhVar, OrientationHelperStateHolder pyVar, RecyclerViewState roVar, boolean z) {
        int i = pyVar.c;
        int i2 = pyVar.g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                pyVar.g = i2 + i;
            }
            bv(rhVar, pyVar);
        }
        int i3 = pyVar.c + pyVar.h;
        LayoutManagerFlagHolder pxVar = this.e;
        while (true) {
            if ((!pyVar.m && i3 <= 0) || !pyVar.d(roVar)) {
                break;
            }
            pxVar.a = 0;
            pxVar.b = false;
            pxVar.c = false;
            pxVar.d = false;
            k(rhVar, roVar, pyVar, pxVar);
            if (!pxVar.b) {
                int i4 = pyVar.b;
                int i5 = pxVar.a;
                pyVar.b = i4 + (pyVar.f * i5);
                if (!pxVar.c || pyVar.l != null || !roVar.g) {
                    pyVar.c -= i5;
                    i3 -= i5;
                }
                int i6 = pyVar.g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + i5;
                    pyVar.g = i7;
                    int i8 = pyVar.c;
                    if (i8 < 0) {
                        pyVar.g = i7 + i8;
                    }
                    bv(rhVar, pyVar);
                }
                if (z && pxVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - pyVar.c;
    }

    public final int I() {
        View ag = ag(0, ak(), false);
        if (ag == null) {
            return -1;
        }
        return bg(ag);
    }

    final int J(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        if (ak() == 0 || i == 0) {
            return 0;
        }
        Q();
        this.a.a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        by(i2, abs, true, roVar);
        OrientationHelperStateHolder pyVar = this.a;
        int H = pyVar.g + H(rhVar, pyVar, roVar, false);
        if (H < 0) {
            return 0;
        }
        if (abs > H) {
            i = i2 * H;
        }
        this.j.n(-i);
        this.a.k = i;
        return i;
    }

    @Override // defpackage.SmoothScrollerActionCallback
    public final PointF K(int i) {
        if (ak() == 0) {
            return null;
        }
        int i2 = (i < bg(aw(0))) != this.l ? -1 : 1;
        return this.i == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final Parcelable L() {
        LinearLayoutManagerSavedState pzVar = this.o;
        if (pzVar != null) {
            return new LinearLayoutManagerSavedState(pzVar);
        }
        LinearLayoutManagerSavedState pzVar2 = new LinearLayoutManagerSavedState();
        if (ak() > 0) {
            Q();
            boolean z = this.b ^ this.l;
            pzVar2.c = z;
            if (z) {
                View bt = bt();
                pzVar2.b = this.j.f() - this.j.a(bt);
                pzVar2.a = bg(bt);
            } else {
                View bu = bu();
                pzVar2.a = bg(bu);
                pzVar2.b = this.j.d(bu) - this.j.j();
            }
        } else {
            pzVar2.a();
        }
        return pzVar2;
    }

    final View M(int i, int i2) {
        Q();
        if (i2 <= i && i2 >= i) {
            return aw(i);
        }
        int d = this.j.d(aw(i));
        int j = this.j.j();
        int i3 = d < j ? 16388 : 4097;
        int i4 = d < j ? 16644 : 4161;
        return this.i == 0 ? this.s.a(i, i2, i4, i3) : this.t.a(i, i2, i4, i3);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final View N(int i) {
        int ak = ak();
        if (ak == 0) {
            return null;
        }
        int bg = i - bg(aw(0));
        if (bg >= 0 && bg < ak) {
            View aw = aw(bg);
            if (bg(aw) == i) {
                return aw;
            }
        }
        return super.N(i);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void O(String str) {
        if (this.o == null) {
            super.O(str);
        }
    }

    protected final void P(RecyclerViewState roVar, int[] iArr) {
        int k = roVar.a != -1 ? this.j.k() : 0;
        int i = this.a.f;
        int i2 = i == -1 ? 0 : k;
        if (i != -1) {
            k = 0;
        }
        iArr[0] = k;
        iArr[1] = i2;
    }

    final void Q() {
        if (this.a == null) {
            this.a = new OrientationHelperStateHolder();
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void R(AccessibilityEvent accessibilityEvent) {
        super.R(accessibilityEvent);
        if (ak() > 0) {
            accessibilityEvent.setFromIndex(I());
            View ag = ag(ak() - 1, -1, false);
            accessibilityEvent.setToIndex(ag != null ? bg(ag) : -1);
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void S(Parcelable parcelable) {
        if (parcelable instanceof LinearLayoutManagerSavedState) {
            LinearLayoutManagerSavedState pzVar = (LinearLayoutManagerSavedState) parcelable;
            this.o = pzVar;
            if (this.m != -1) {
                pzVar.a();
            }
            aO();
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void T(int i) {
        this.m = i;
        this.n = Integer.MIN_VALUE;
        LinearLayoutManagerSavedState pzVar = this.o;
        if (pzVar != null) {
            pzVar.a();
        }
        aO();
    }

    public final void U(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        O(null);
        if (i != this.i || this.j == null) {
            RecyclerViewOrientationHelper q = RecyclerViewOrientationHelper.q(this, i);
            this.j = q;
            this.p.a = q;
            this.i = i;
            aO();
        }
    }

    public final void V(boolean z) {
        O(null);
        if (z == this.k) {
            return;
        }
        this.k = z;
        aO();
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean W() {
        return this.i == 0;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean X() {
        return this.i == 1;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean Y() {
        return true;
    }

    protected final boolean Z() {
        return an() == 1;
    }

    final boolean aa() {
        return this.j.h() == 0 && this.j.e() == 0;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean ab() {
        if (this.C != 1073741824 && this.B != 1073741824) {
            int ak = ak();
            for (int i = 0; i < ak; i++) {
                ViewGroup.LayoutParams layoutParams = aw(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ac(int i, int i2, RecyclerViewState roVar, LinearLayoutChunkResult pnVar) {
        if (1 == this.i) {
            i = i2;
        }
        if (ak() == 0 || i == 0) {
            return;
        }
        Q();
        by(i > 0 ? 1 : -1, Math.abs(i), true, roVar);
        u(roVar, this.a, pnVar);
    }

    final View ae(boolean z) {
        return this.l ? ag(0, ak(), z) : ag(ak() - 1, -1, z);
    }

    final View af(boolean z) {
        return this.l ? ag(ak() - 1, -1, z) : ag(0, ak(), z);
    }

    final View ag(int i, int i2, boolean z) {
        Q();
        int i3 = true != z ? 320 : 24579;
        return this.i == 0 ? this.s.a(i, i2, i3, 320) : this.t.a(i, i2, i3, 320);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ah(RecyclerView recyclerView) {
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ai(RecyclerView recyclerView, int i) {
        RecyclerViewSmoothScroller rnVar = new RecyclerViewSmoothScroller(recyclerView.getContext());
        rnVar.a = i;
        aU(rnVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public int d(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        if (this.i == 1) {
            return 0;
        }
        return J(i, rhVar, roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public int e(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        if (this.i == 0) {
            return 0;
        }
        return J(i, rhVar, roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public RecyclerViewLayoutParams f() {
        return new RecyclerViewLayoutParams(-2, -2);
    }

    public View i(RecyclerViewRecycler rhVar, RecyclerViewState roVar, boolean z, boolean z2) {
        int i;
        int i2;
        Q();
        int ak = ak();
        int i3 = -1;
        if (z2) {
            i = ak() - 1;
            i2 = -1;
        } else {
            i3 = ak;
            i = 0;
            i2 = 1;
        }
        int a = roVar.a();
        int j = this.j.j();
        int f = this.j.f();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i != i3) {
            View aw = aw(i);
            int bg = bg(aw);
            int d = this.j.d(aw);
            int a2 = this.j.a(aw);
            if (bg >= 0 && bg < a) {
                if (!((RecyclerViewLayoutParams) aw.getLayoutParams()).c()) {
                    boolean z3 = a2 <= j && d < j;
                    boolean z4 = d >= f && a2 > f;
                    if (!z3 && !z4) {
                        return aw;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = aw;
                        }
                        view2 = aw;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = aw;
                        }
                        view2 = aw;
                    }
                } else if (view3 == null) {
                    view3 = aw;
                }
            }
            i += i2;
        }
        return view != null ? view : view2 == null ? view3 : view2;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public View j(View view, int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        int G;
        View br;
        bx();
        if (ak() == 0 || (G = G(i)) == Integer.MIN_VALUE) {
            return null;
        }
        Q();
        by(G, (int) (this.j.k() * 0.33333334f), false, roVar);
        OrientationHelperStateHolder pyVar = this.a;
        pyVar.g = Integer.MIN_VALUE;
        pyVar.a = false;
        H(rhVar, pyVar, roVar, true);
        if (G == -1) {
            br = this.l ? bs() : br();
            G = -1;
        } else {
            br = this.l ? br() : bs();
        }
        View bu = G == -1 ? bu() : bt();
        if (!bu.hasFocusable()) {
            return br;
        }
        if (br == null) {
            return null;
        }
        return bu;
    }

    public void k(RecyclerViewRecycler rhVar, RecyclerViewState roVar, OrientationHelperStateHolder pyVar, LayoutManagerFlagHolder pxVar) {
        int i;
        int i2;
        int i3;
        int i4;
        View a = pyVar.a(rhVar);
        if (a == null) {
            pxVar.b = true;
            return;
        }
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) a.getLayoutParams();
        if (pyVar.l == null) {
            if (this.l == (pyVar.f == -1)) {
                aA(a);
            } else {
                aB(a, 0);
            }
        } else {
            if (this.l == (pyVar.f == -1)) {
                ay(a);
            } else {
                az(a, 0);
            }
        }
        RecyclerViewLayoutParams rbVar2 = (RecyclerViewLayoutParams) a.getLayoutParams();
        Rect d = this.r.d(a);
        int i5 = d.left;
        int i6 = d.right;
        int i7 = d.top;
        int i8 = d.bottom;
        int al = ra.al(this.D, this.B, ar() + as() + rbVar2.leftMargin + rbVar2.rightMargin + i5 + i6, rbVar2.width, W());
        int al2 = ra.al(this.E, this.C, at() + aq() + rbVar2.topMargin + rbVar2.bottomMargin + i7 + i8, rbVar2.height, X());
        if (aY(a, al, al2, rbVar2)) {
            a.measure(al, al2);
        }
        pxVar.a = this.j.b(a);
        if (this.i == 1) {
            if (Z()) {
                i4 = this.D - as();
                i = i4 - this.j.c(a);
            } else {
                i = ar();
                i4 = this.j.c(a) + i;
            }
            if (pyVar.f == -1) {
                i2 = pyVar.b;
                i3 = i2 - pxVar.a;
            } else {
                i3 = pyVar.b;
                i2 = pxVar.a + i3;
            }
        } else {
            int at = at();
            int c = this.j.c(a) + at;
            if (pyVar.f == -1) {
                int i9 = pyVar.b;
                int i10 = i9 - pxVar.a;
                i4 = i9;
                i2 = c;
                i = i10;
                i3 = at;
            } else {
                int i11 = pyVar.b;
                int i12 = pxVar.a + i11;
                i = i11;
                i2 = c;
                i3 = at;
                i4 = i12;
            }
        }
        bj(a, i, i3, i4, i2);
        if (rbVar.c() || rbVar.b()) {
            pxVar.c = true;
        }
        pxVar.d = a.hasFocusable();
    }

    public void l(RecyclerViewRecycler rhVar, RecyclerViewState roVar, LinearLayoutManagerAnchorInfo pwVar, int i) {
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public void n(RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        View i;
        int i2;
        int i3;
        int i4;
        int i5;
        View N;
        int i6 = -1;
        if (!(this.o == null && this.m == -1) && roVar.a() == 0) {
            aJ(rhVar);
            return;
        }
        LinearLayoutManagerSavedState pzVar = this.o;
        if (pzVar != null && pzVar.b()) {
            this.m = this.o.a;
        }
        Q();
        this.a.a = false;
        bx();
        View ax = ax();
        LinearLayoutManagerAnchorInfo pwVar = this.p;
        if (!pwVar.e || this.m != -1 || this.o != null) {
            pwVar.d();
            LinearLayoutManagerAnchorInfo pwVar2 = this.p;
            pwVar2.d = this.l ^ this.c;
            if (!roVar.g && (i2 = this.m) != -1) {
                if (i2 < 0 || i2 >= roVar.a()) {
                    this.m = -1;
                    this.n = Integer.MIN_VALUE;
                } else {
                    pwVar2.b = this.m;
                    LinearLayoutManagerSavedState pzVar2 = this.o;
                    if (pzVar2 != null && pzVar2.b()) {
                        boolean z = this.o.c;
                        pwVar2.d = z;
                        if (z) {
                            pwVar2.c = this.j.f() - this.o.b;
                        } else {
                            pwVar2.c = this.j.j() + this.o.b;
                        }
                    } else if (this.n == Integer.MIN_VALUE) {
                        View N2 = N(this.m);
                        if (N2 == null) {
                            if (ak() > 0) {
                                pwVar2.d = (this.m < bg(aw(0))) == this.l;
                            }
                            pwVar2.a();
                        } else if (this.j.b(N2) > this.j.k()) {
                            pwVar2.a();
                        } else if (this.j.d(N2) - this.j.j() < 0) {
                            pwVar2.c = this.j.j();
                            pwVar2.d = false;
                        } else if (this.j.f() - this.j.a(N2) < 0) {
                            pwVar2.c = this.j.f();
                            pwVar2.d = true;
                        } else {
                            pwVar2.c = pwVar2.d ? this.j.a(N2) + this.j.o() : this.j.d(N2);
                        }
                    } else {
                        boolean z2 = this.l;
                        pwVar2.d = z2;
                        if (z2) {
                            pwVar2.c = this.j.f() - this.n;
                        } else {
                            pwVar2.c = this.j.j() + this.n;
                        }
                    }
                    this.p.e = true;
                }
            }
            if (ak() != 0) {
                View ax2 = ax();
                if (ax2 != null) {
                    RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) ax2.getLayoutParams();
                    if (!rbVar.c() && rbVar.a() >= 0 && rbVar.a() < roVar.a()) {
                        pwVar2.c(ax2, bg(ax2));
                        this.p.e = true;
                    }
                }
                boolean z3 = this.b;
                boolean z4 = this.c;
                if (z3 == z4 && (i = i(rhVar, roVar, pwVar2.d, z4)) != null) {
                    pwVar2.b(i, bg(i));
                    if (!roVar.g && t()) {
                        int d = this.j.d(i);
                        int a = this.j.a(i);
                        int j = this.j.j();
                        int f = this.j.f();
                        boolean z5 = a <= j && d < j;
                        boolean z6 = d >= f && a > f;
                        if (z5 || z6) {
                            if (true == pwVar2.d) {
                                j = f;
                            }
                            pwVar2.c = j;
                        }
                    }
                    this.p.e = true;
                }
            }
            pwVar2.a();
            pwVar2.b = this.c ? roVar.a() - 1 : 0;
            this.p.e = true;
        } else if (ax != null && (this.j.d(ax) >= this.j.f() || this.j.a(ax) <= this.j.j())) {
            this.p.c(ax, bg(ax));
        }
        OrientationHelperStateHolder pyVar = this.a;
        pyVar.f = pyVar.k >= 0 ? 1 : -1;
        int[] iArr = this.g;
        iArr[0] = 0;
        iArr[1] = 0;
        P(roVar, iArr);
        int max = Math.max(0, this.g[0]) + this.j.j();
        int max2 = Math.max(0, this.g[1]) + this.j.g();
        if (roVar.g && (i5 = this.m) != -1 && this.n != Integer.MIN_VALUE && (N = N(i5)) != null) {
            int f2 = this.l ? (this.j.f() - this.j.a(N)) - this.n : this.n - (this.j.d(N) - this.j.j());
            if (f2 > 0) {
                max += f2;
            } else {
                max2 -= f2;
            }
        }
        LinearLayoutManagerAnchorInfo pwVar3 = this.p;
        if (!pwVar3.d ? true != this.l : true == this.l) {
            i6 = 1;
        }
        l(rhVar, roVar, pwVar3, i6);
        aD(rhVar);
        this.a.m = aa();
        OrientationHelperStateHolder pyVar2 = this.a;
        pyVar2.j = roVar.g;
        pyVar2.i = 0;
        LinearLayoutManagerAnchorInfo pwVar4 = this.p;
        if (pwVar4.d) {
            bB(pwVar4);
            OrientationHelperStateHolder pyVar3 = this.a;
            pyVar3.h = max;
            H(rhVar, pyVar3, roVar, false);
            OrientationHelperStateHolder pyVar4 = this.a;
            i4 = pyVar4.b;
            int i7 = pyVar4.d;
            int i8 = pyVar4.c;
            if (i8 > 0) {
                max2 += i8;
            }
            bz(this.p);
            OrientationHelperStateHolder pyVar5 = this.a;
            pyVar5.h = max2;
            pyVar5.d += pyVar5.e;
            H(rhVar, pyVar5, roVar, false);
            OrientationHelperStateHolder pyVar6 = this.a;
            i3 = pyVar6.b;
            int i9 = pyVar6.c;
            if (i9 > 0) {
                bC(i7, i4);
                OrientationHelperStateHolder pyVar7 = this.a;
                pyVar7.h = i9;
                H(rhVar, pyVar7, roVar, false);
                i4 = this.a.b;
            }
        } else {
            bz(pwVar4);
            OrientationHelperStateHolder pyVar8 = this.a;
            pyVar8.h = max2;
            H(rhVar, pyVar8, roVar, false);
            OrientationHelperStateHolder pyVar9 = this.a;
            i3 = pyVar9.b;
            int i10 = pyVar9.d;
            int i11 = pyVar9.c;
            if (i11 > 0) {
                max += i11;
            }
            bB(this.p);
            OrientationHelperStateHolder pyVar10 = this.a;
            pyVar10.h = max;
            pyVar10.d += pyVar10.e;
            H(rhVar, pyVar10, roVar, false);
            OrientationHelperStateHolder pyVar11 = this.a;
            i4 = pyVar11.b;
            int i12 = pyVar11.c;
            if (i12 > 0) {
                bA(i10, i3);
                OrientationHelperStateHolder pyVar12 = this.a;
                pyVar12.h = i12;
                H(rhVar, pyVar12, roVar, false);
                i3 = this.a.b;
            }
        }
        if (ak() > 0) {
            if (this.l ^ this.c) {
                int bp = bp(i3, rhVar, roVar, true);
                int i13 = i4 + bp;
                int bq = bq(i13, rhVar, roVar, false);
                i4 = i13 + bq;
                i3 = i3 + bp + bq;
            } else {
                int bq2 = bq(i4, rhVar, roVar, true);
                int i14 = i3 + bq2;
                int bp2 = bp(i14, rhVar, roVar, false);
                i4 = i4 + bq2 + bp2;
                i3 = i14 + bp2;
            }
        }
        if (roVar.k && ak() != 0 && !roVar.g && t()) {
            List list = rhVar.d;
            int size = list.size();
            int bg = bg(aw(0));
            int i15 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < size; i17++) {
                RecyclerViewViewHolder rrVar = (RecyclerViewViewHolder) list.get(i17);
                if (!rrVar.isRemoved()) {
                    if ((rrVar.getLayoutPosition() < bg) != this.l) {
                        i15 += this.j.b(rrVar.itemView);
                    } else {
                        i16 += this.j.b(rrVar.itemView);
                    }
                }
            }
            this.a.l = list;
            if (i15 > 0) {
                bC(bg(bu()), i4);
                OrientationHelperStateHolder pyVar13 = this.a;
                pyVar13.h = i15;
                pyVar13.c = 0;
                pyVar13.b();
                H(rhVar, this.a, roVar, false);
            }
            if (i16 > 0) {
                bA(bg(bt()), i3);
                OrientationHelperStateHolder pyVar14 = this.a;
                pyVar14.h = i16;
                pyVar14.c = 0;
                pyVar14.b();
                H(rhVar, this.a, roVar, false);
            }
            this.a.l = null;
        }
        if (roVar.g) {
            this.p.d();
        } else {
            RecyclerViewOrientationHelper qmVar = this.j;
            qmVar.b = qmVar.k();
        }
        this.b = this.c;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public void o(RecyclerViewState roVar) {
        this.o = null;
        this.m = -1;
        this.n = Integer.MIN_VALUE;
        this.p.d();
    }

    public void r(boolean z) {
        O(null);
        if (this.c == z) {
            return;
        }
        this.c = z;
        aO();
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public boolean t() {
        return this.o == null && this.b == this.c;
    }

    public void u(RecyclerViewState roVar, OrientationHelperStateHolder pyVar, LinearLayoutChunkResult pnVar) {
        int i = pyVar.d;
        if (i < 0 || i >= roVar.a()) {
            return;
        }
        pnVar.a(i, Math.max(0, pyVar.g));
    }

    public LinearLayoutManager(int i, boolean z) {
        this.i = 1;
        this.k = false;
        this.l = false;
        this.c = false;
        this.d = true;
        this.m = -1;
        this.n = Integer.MIN_VALUE;
        this.o = null;
        this.p = new LinearLayoutManagerAnchorInfo();
        this.e = new LayoutManagerFlagHolder();
        this.f = 2;
        this.g = new int[2];
        U(i);
        V(z);
    }

    private final void bw(RecyclerViewRecycler rhVar, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                aM(i, rhVar);
                i--;
            }
        } else {
            while (true) {
                i2--;
                if (i2 < i) {
                    return;
                } else {
                    aM(i2, rhVar);
                }
            }
        }
    }

    final int G(int i) {
        switch (i) {
            case 1:
                return (this.i != 1 && Z()) ? 1 : -1;
            case 2:
                return (this.i != 1 && Z()) ? -1 : 1;
            case 17:
                return this.i == 0 ? -1 : Integer.MIN_VALUE;
            case 33:
                return this.i == 1 ? -1 : Integer.MIN_VALUE;
            case 66:
                return this.i == 0 ? 1 : Integer.MIN_VALUE;
            case 130:
                return this.i == 1 ? 1 : Integer.MIN_VALUE;
            default:
                return Integer.MIN_VALUE;
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ad(int i, LinearLayoutChunkResult pnVar) {
        boolean z;
        int i2;
        LinearLayoutManagerSavedState pzVar = this.o;
        if (pzVar == null || !pzVar.b()) {
            bx();
            z = this.l;
            i2 = this.m;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            LinearLayoutManagerSavedState pzVar2 = this.o;
            z = pzVar2.c;
            i2 = pzVar2.a;
        }
        int i3 = true != z ? 1 : -1;
        for (int i4 = 0; i4 < this.f && i2 >= 0 && i2 < i; i4++) {
            pnVar.a(i2, 0);
            i2 += i3;
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = 1;
        this.k = false;
        this.l = false;
        this.c = false;
        this.d = true;
        this.m = -1;
        this.n = Integer.MIN_VALUE;
        this.o = null;
        this.p = new LinearLayoutManagerAnchorInfo();
        this.e = new LayoutManagerFlagHolder();
        this.f = 2;
        this.g = new int[2];
        ViewHolderFlagState au = au(context, attributeSet, i, i2);
        U(au.a);
        V(au.c);
        r(au.d);
    }
}
