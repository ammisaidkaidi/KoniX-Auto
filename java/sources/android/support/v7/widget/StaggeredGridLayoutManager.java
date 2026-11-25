package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.preference.Preference;
import defpackage.ViewCompatApi26Statics;
import defpackage.LinearLayoutChunkResult;
import defpackage.LinearLayoutManagerLayoutState;
import defpackage.RecyclerViewOrientationHelper;
import defpackage.ViewHolderFlagState;
import defpackage.RecyclerViewLayoutManager;
import defpackage.RecyclerViewLayoutParams;
import defpackage.RecyclerViewRecycler;
import defpackage.SmoothScrollerActionCallback;
import defpackage.RecyclerViewSmoothScroller;
import defpackage.RecyclerViewState;
import defpackage.StaggeredGridCheckForGapsRunnable;
import defpackage.StaggeredGridSpan;
import defpackage.StaggeredGridLayoutParams;
import defpackage.StaggeredGridFullSpanItem;
import defpackage.StaggeredGridSpanIndices;
import defpackage.StaggeredGridSavedState;
import defpackage.StaggeredGridLazySpanLookup;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerViewLayoutManager implements SmoothScrollerActionCallback {
    private StaggeredGridSavedState F;
    private int[] J;
    StaggeredGridLazySpanLookup[] a;
    public RecyclerViewOrientationHelper b;
    RecyclerViewOrientationHelper c;
    private int i;
    private int j;
    private int k;
    private final LinearLayoutManagerLayoutState l;
    private BitSet m;
    private boolean o;
    private boolean p;
    public boolean d = false;
    boolean e = false;
    int f = -1;
    int g = Integer.MIN_VALUE;
    StaggeredGridSpanIndices h = new StaggeredGridSpanIndices();
    private int n = 2;
    private final Rect G = new Rect();
    private final StaggeredGridSpan H = new StaggeredGridSpan(this);
    private boolean I = true;
    private final Runnable K = new StaggeredGridCheckForGapsRunnable(this);

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = -1;
        ViewHolderFlagState au = au(context, attributeSet, i, i2);
        int i3 = au.a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        O(null);
        if (i3 != this.j) {
            this.j = i3;
            RecyclerViewOrientationHelper qmVar = this.b;
            this.b = this.c;
            this.c = qmVar;
            aO();
        }
        int i4 = au.b;
        O(null);
        if (i4 != this.i) {
            this.h.a();
            aO();
            this.i = i4;
            this.m = new BitSet(i4);
            this.a = new StaggeredGridLazySpanLookup[this.i];
            for (int i5 = 0; i5 < this.i; i5++) {
                this.a[i5] = new StaggeredGridLazySpanLookup(this, i5);
            }
            aO();
        }
        G(au.c);
        this.l = new LinearLayoutManagerLayoutState();
        this.b = RecyclerViewOrientationHelper.q(this, this.j);
        this.c = RecyclerViewOrientationHelper.q(this, 1 - this.j);
    }

    private final int M(int i) {
        if (ak() == 0) {
            return this.e ? 1 : -1;
        }
        return (i < c()) != this.e ? -1 : 1;
    }

    private final int P(RecyclerViewState roVar) {
        if (ak() == 0) {
            return 0;
        }
        return ViewCompatApi26Statics.d(roVar, this.b, q(!this.I), l(!this.I), this, this.I);
    }

    private final int Q(RecyclerViewState roVar) {
        if (ak() == 0) {
            return 0;
        }
        return ViewCompatApi26Statics.e(roVar, this.b, q(!this.I), l(!this.I), this, this.I, this.e);
    }

    private final int U(RecyclerViewState roVar) {
        if (ak() == 0) {
            return 0;
        }
        return ViewCompatApi26Statics.f(roVar, this.b, q(!this.I), l(!this.I), this, this.I);
    }

    private final int V(RecyclerViewRecycler rhVar, LinearLayoutManagerLayoutState ptVar, RecyclerViewState roVar) {
        StaggeredGridLazySpanLookup sfVar;
        int f;
        int b;
        int j;
        int b2;
        int i;
        int i2;
        int i3;
        this.m.set(0, this.i, true);
        int i4 = this.l.i ? ptVar.e == 1 ? Preference.DEFAULT_ORDER : Integer.MIN_VALUE : ptVar.e == 1 ? ptVar.g + ptVar.b : ptVar.f - ptVar.b;
        int i5 = ptVar.e;
        for (int i6 = 0; i6 < this.i; i6++) {
            if (!this.a[i6].a.isEmpty()) {
                bv(this.a[i6], i5, i4);
            }
        }
        int f2 = this.e ? this.b.f() : this.b.j();
        boolean z = false;
        while (ptVar.a(roVar) && (this.l.i || !this.m.isEmpty())) {
            View c = rhVar.c(ptVar.c);
            ptVar.c += ptVar.d;
            StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) c.getLayoutParams();
            int a = sbVar.a();
            int[] iArr = this.h.a;
            int i7 = iArr != null ? a >= iArr.length ? -1 : iArr[a] : -1;
            if (i7 == -1) {
                boolean z2 = sbVar.b;
                if (bw(ptVar.e)) {
                    i2 = this.i - 1;
                    i = -1;
                    i3 = -1;
                } else {
                    i = this.i;
                    i2 = 0;
                    i3 = 1;
                }
                StaggeredGridLazySpanLookup sfVar2 = null;
                if (ptVar.e == 1) {
                    int j2 = this.b.j();
                    int i8 = Preference.DEFAULT_ORDER;
                    while (i2 != i) {
                        StaggeredGridLazySpanLookup sfVar3 = this.a[i2];
                        int d = sfVar3.d(j2);
                        int i9 = d < i8 ? d : i8;
                        if (d < i8) {
                            sfVar2 = sfVar3;
                        }
                        i2 += i3;
                        i8 = i9;
                    }
                    sfVar = sfVar2;
                } else {
                    int f3 = this.b.f();
                    int i10 = Integer.MIN_VALUE;
                    while (i2 != i) {
                        StaggeredGridLazySpanLookup sfVar4 = this.a[i2];
                        int f4 = sfVar4.f(f3);
                        int i11 = f4 > i10 ? f4 : i10;
                        if (f4 > i10) {
                            sfVar2 = sfVar4;
                        }
                        i2 += i3;
                        i10 = i11;
                    }
                    sfVar = sfVar2;
                }
                StaggeredGridSpanIndices sdVar = this.h;
                sdVar.b(a);
                sdVar.a[a] = sfVar.e;
            } else {
                sfVar = this.a[i7];
            }
            sbVar.a = sfVar;
            if (ptVar.e == 1) {
                aA(c);
            } else {
                aB(c, 0);
            }
            boolean z3 = sbVar.b;
            if (this.j == 1) {
                bx(c, al(this.k, this.B, 0, sbVar.width, false), al(this.E, this.C, at() + aq(), sbVar.height, true));
            } else {
                bx(c, al(this.D, this.B, ar() + as(), sbVar.width, true), al(this.k, this.C, 0, sbVar.height, false));
            }
            if (ptVar.e == 1) {
                boolean z4 = sbVar.b;
                b = sfVar.d(f2);
                f = this.b.b(c) + b;
                if (i7 == -1) {
                    boolean z5 = sbVar.b;
                }
            } else {
                boolean z6 = sbVar.b;
                f = sfVar.f(f2);
                b = f - this.b.b(c);
                if (i7 == -1) {
                    boolean z7 = sbVar.b;
                }
            }
            boolean z8 = sbVar.b;
            if (ptVar.e == 1) {
                StaggeredGridLazySpanLookup sfVar5 = sbVar.a;
                StaggeredGridLayoutParams n = StaggeredGridLazySpanLookup.n(c);
                n.a = sfVar5;
                sfVar5.a.add(c);
                sfVar5.c = Integer.MIN_VALUE;
                if (sfVar5.a.size() == 1) {
                    sfVar5.b = Integer.MIN_VALUE;
                }
                if (n.c() || n.b()) {
                    sfVar5.d += sfVar5.f.b.b(c);
                }
            } else {
                StaggeredGridLazySpanLookup sfVar6 = sbVar.a;
                StaggeredGridLayoutParams n2 = StaggeredGridLazySpanLookup.n(c);
                n2.a = sfVar6;
                sfVar6.a.add(0, c);
                sfVar6.b = Integer.MIN_VALUE;
                if (sfVar6.a.size() == 1) {
                    sfVar6.c = Integer.MIN_VALUE;
                }
                if (n2.c() || n2.b()) {
                    sfVar6.d += sfVar6.f.b.b(c);
                }
            }
            if (J() && this.j == 1) {
                boolean z9 = sbVar.b;
                b2 = this.c.f() - (((this.i - 1) - sfVar.e) * this.k);
                j = b2 - this.c.b(c);
            } else {
                boolean z10 = sbVar.b;
                j = this.c.j() + (sfVar.e * this.k);
                b2 = this.c.b(c) + j;
            }
            if (this.j == 1) {
                bj(c, j, b, b2, f);
            } else {
                bj(c, b, j, f, b2);
            }
            boolean z11 = sbVar.b;
            bv(sfVar, this.l.e, i4);
            bp(rhVar, this.l);
            if (this.l.h && c.hasFocusable()) {
                boolean z12 = sbVar.b;
                this.m.set(sfVar.e, false);
            }
            z = true;
        }
        if (!z) {
            bp(rhVar, this.l);
        }
        int j3 = this.l.e == -1 ? this.b.j() - aa(this.b.j()) : Z(this.b.f()) - this.b.f();
        if (j3 > 0) {
            return Math.min(ptVar.b, j3);
        }
        return 0;
    }

    private final int Z(int i) {
        int d = this.a[0].d(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int d2 = this.a[i2].d(i);
            if (d2 > d) {
                d = d2;
            }
        }
        return d;
    }

    private final int aa(int i) {
        int f = this.a[0].f(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int f2 = this.a[i2].f(i);
            if (f2 < f) {
                f = f2;
            }
        }
        return f;
    }

    private final void ae(RecyclerViewRecycler rhVar, RecyclerViewState roVar, boolean z) {
        int f;
        int Z = Z(Integer.MIN_VALUE);
        if (Z != Integer.MIN_VALUE && (f = this.b.f() - Z) > 0) {
            int i = f - (-k(-f, rhVar, roVar));
            if (!z || i <= 0) {
                return;
            }
            this.b.n(i);
        }
    }

    private final void af(RecyclerViewRecycler rhVar, RecyclerViewState roVar, boolean z) {
        int j;
        int aa = aa(Preference.DEFAULT_ORDER);
        if (aa != Integer.MAX_VALUE && (j = aa - this.b.j()) > 0) {
            int k = j - k(j, rhVar, roVar);
            if (!z || k <= 0) {
                return;
            }
            this.b.n(-k);
        }
    }

    private final void ag(int i, int i2, int i3) {
        int i4;
        int i5;
        StaggeredGridFullSpanItem scVar;
        int i6;
        int i7 = this.e ? i() : c();
        if (i3 != 8) {
            i4 = i + i2;
            i5 = i;
        } else if (i < i2) {
            i4 = i2 + 1;
            i5 = i;
        } else {
            i4 = i + 1;
            i5 = i2;
        }
        StaggeredGridSpanIndices sdVar = this.h;
        int[] iArr = sdVar.a;
        if (iArr != null && i5 < iArr.length) {
            List list = sdVar.b;
            if (list == null) {
                i6 = -1;
            } else {
                int size = list.size() - 1;
                while (true) {
                    if (size < 0) {
                        scVar = null;
                        break;
                    }
                    scVar = (StaggeredGridFullSpanItem) sdVar.b.get(size);
                    if (scVar.a == i5) {
                        break;
                    } else {
                        size--;
                    }
                }
                if (scVar != null) {
                    sdVar.b.remove(scVar);
                }
                int size2 = sdVar.b.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size2) {
                        i8 = -1;
                        break;
                    } else if (((StaggeredGridFullSpanItem) sdVar.b.get(i8)).a >= i5) {
                        break;
                    } else {
                        i8++;
                    }
                }
                if (i8 != -1) {
                    StaggeredGridFullSpanItem scVar2 = (StaggeredGridFullSpanItem) sdVar.b.get(i8);
                    sdVar.b.remove(i8);
                    i6 = scVar2.a;
                } else {
                    i6 = -1;
                }
            }
            if (i6 == -1) {
                int[] iArr2 = sdVar.a;
                Arrays.fill(iArr2, i5, iArr2.length, -1);
                int length = sdVar.a.length;
            } else {
                Arrays.fill(sdVar.a, i5, Math.min(i6 + 1, sdVar.a.length), -1);
            }
        }
        switch (i3) {
            case 1:
                this.h.c(i, i2);
                break;
            case 2:
                this.h.d(i, i2);
                break;
            case 8:
                this.h.d(i, 1);
                this.h.c(i2, 1);
                break;
        }
        if (i4 <= i7) {
            return;
        }
        if (i5 <= (this.e ? c() : i())) {
            aO();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:249:0x03e8, code lost:
    
        if (I() != false) goto L235;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void bo(RecyclerViewRecycler rhVar, RecyclerViewState roVar, boolean z) {
        StaggeredGridSavedState seVar;
        int i;
        int i2;
        int i3;
        int i4;
        StaggeredGridSpan saVar = this.H;
        if (!(this.F == null && this.f == -1) && roVar.a() == 0) {
            aJ(rhVar);
            saVar.a();
            return;
        }
        boolean z2 = true;
        boolean z3 = (saVar.e && this.f == -1) ? this.F != null : true;
        if (z3) {
            saVar.a();
            StaggeredGridSavedState seVar2 = this.F;
            if (seVar2 != null) {
                int i5 = seVar2.c;
                if (i5 > 0) {
                    if (i5 == this.i) {
                        for (int i6 = 0; i6 < this.i; i6++) {
                            this.a[i6].j();
                            StaggeredGridSavedState seVar3 = this.F;
                            int i7 = seVar3.d[i6];
                            if (i7 != Integer.MIN_VALUE) {
                                i7 = seVar3.i ? i7 + this.b.f() : i7 + this.b.j();
                            }
                            this.a[i6].l(i7);
                        }
                    } else {
                        seVar2.b();
                        StaggeredGridSavedState seVar4 = this.F;
                        seVar4.a = seVar4.b;
                    }
                }
                StaggeredGridSavedState seVar5 = this.F;
                this.p = seVar5.j;
                G(seVar5.h);
                bs();
                StaggeredGridSavedState seVar6 = this.F;
                int i8 = seVar6.a;
                if (i8 != -1) {
                    this.f = i8;
                    saVar.c = seVar6.i;
                } else {
                    saVar.c = this.e;
                }
                if (seVar6.e > 1) {
                    StaggeredGridSpanIndices sdVar = this.h;
                    sdVar.a = seVar6.f;
                    sdVar.b = seVar6.g;
                }
            } else {
                bs();
                saVar.c = this.e;
            }
            if (!roVar.g && (i4 = this.f) != -1) {
                if (i4 < 0 || i4 >= roVar.a()) {
                    this.f = -1;
                    this.g = Integer.MIN_VALUE;
                } else {
                    StaggeredGridSavedState seVar7 = this.F;
                    if (seVar7 == null || seVar7.a == -1 || seVar7.c <= 0) {
                        View N = N(this.f);
                        if (N != null) {
                            saVar.a = this.e ? i() : c();
                            if (this.g != Integer.MIN_VALUE) {
                                if (saVar.c) {
                                    saVar.b = (this.b.f() - this.g) - this.b.a(N);
                                } else {
                                    saVar.b = (this.b.j() + this.g) - this.b.d(N);
                                }
                            } else if (this.b.b(N) > this.b.k()) {
                                saVar.b = saVar.c ? this.b.f() : this.b.j();
                            } else {
                                int d = this.b.d(N) - this.b.j();
                                if (d < 0) {
                                    saVar.b = -d;
                                } else {
                                    int f = this.b.f() - this.b.a(N);
                                    if (f < 0) {
                                        saVar.b = f;
                                    } else {
                                        saVar.b = Integer.MIN_VALUE;
                                    }
                                }
                            }
                        } else {
                            int i9 = this.f;
                            saVar.a = i9;
                            int i10 = this.g;
                            if (i10 == Integer.MIN_VALUE) {
                                boolean z4 = M(i9) == 1;
                                saVar.c = z4;
                                saVar.b = z4 ? saVar.g.b.f() : saVar.g.b.j();
                            } else if (saVar.c) {
                                saVar.b = saVar.g.b.f() - i10;
                            } else {
                                saVar.b = saVar.g.b.j() + i10;
                            }
                            saVar.d = true;
                        }
                    } else {
                        saVar.b = Integer.MIN_VALUE;
                        saVar.a = this.f;
                    }
                    saVar.e = true;
                }
            }
            if (this.o) {
                int a = roVar.a();
                int ak = ak() - 1;
                while (true) {
                    if (ak < 0) {
                        i3 = 0;
                        break;
                    }
                    i3 = bg(aw(ak));
                    if (i3 >= 0 && i3 < a) {
                        break;
                    } else {
                        ak--;
                    }
                }
            } else {
                int a2 = roVar.a();
                int ak2 = ak();
                int i11 = 0;
                while (true) {
                    if (i11 >= ak2) {
                        i3 = 0;
                        break;
                    }
                    int bg = bg(aw(i11));
                    if (bg >= 0 && bg < a2) {
                        i3 = bg;
                        break;
                    }
                    i11++;
                }
            }
            saVar.a = i3;
            saVar.b = Integer.MIN_VALUE;
            saVar.e = true;
        }
        if (this.F == null && this.f == -1 && (saVar.c != this.o || J() != this.p)) {
            this.h.a();
            saVar.d = true;
        }
        if (ak() > 0 && ((seVar = this.F) == null || seVar.c <= 0)) {
            if (saVar.d) {
                for (int i12 = 0; i12 < this.i; i12++) {
                    this.a[i12].j();
                    int i13 = saVar.b;
                    if (i13 != Integer.MIN_VALUE) {
                        this.a[i12].l(i13);
                    }
                }
            } else {
                if (z3) {
                    i = 0;
                } else if (this.H.f == null) {
                    i = 0;
                } else {
                    for (int i14 = 0; i14 < this.i; i14++) {
                        StaggeredGridLazySpanLookup sfVar = this.a[i14];
                        sfVar.j();
                        sfVar.l(this.H.f[i14]);
                    }
                }
                while (i < this.i) {
                    StaggeredGridLazySpanLookup sfVar2 = this.a[i];
                    boolean z5 = this.e;
                    int i15 = saVar.b;
                    int d2 = z5 ? sfVar2.d(Integer.MIN_VALUE) : sfVar2.f(Integer.MIN_VALUE);
                    sfVar2.j();
                    if (d2 != Integer.MIN_VALUE && ((!z5 || d2 >= sfVar2.f.b.f()) && (z5 || d2 <= sfVar2.f.b.j()))) {
                        if (i15 != Integer.MIN_VALUE) {
                            d2 += i15;
                        }
                        sfVar2.c = d2;
                        sfVar2.b = d2;
                    }
                    i++;
                }
                StaggeredGridSpan saVar2 = this.H;
                StaggeredGridLazySpanLookup[] sfVarArr = this.a;
                int length = sfVarArr.length;
                int[] iArr = saVar2.f;
                if (iArr == null || iArr.length < length) {
                    saVar2.f = new int[saVar2.g.a.length];
                    i2 = 0;
                } else {
                    i2 = 0;
                }
                while (i2 < length) {
                    saVar2.f[i2] = sfVarArr[i2].f(Integer.MIN_VALUE);
                    i2++;
                }
            }
        }
        aD(rhVar);
        this.l.a = false;
        H(this.c.k());
        bu(saVar.a, roVar);
        if (saVar.c) {
            bt(-1);
            V(rhVar, this.l, roVar);
            bt(1);
            LinearLayoutManagerLayoutState ptVar = this.l;
            ptVar.c = saVar.a + ptVar.d;
            V(rhVar, ptVar, roVar);
        } else {
            bt(1);
            V(rhVar, this.l, roVar);
            bt(-1);
            LinearLayoutManagerLayoutState ptVar2 = this.l;
            ptVar2.c = saVar.a + ptVar2.d;
            V(rhVar, ptVar2, roVar);
        }
        if (this.c.h() != 1073741824) {
            int ak3 = ak();
            float f2 = 0.0f;
            for (int i16 = 0; i16 < ak3; i16++) {
                View aw = aw(i16);
                float b = this.c.b(aw);
                if (b >= f2) {
                    f2 = Math.max(f2, b);
                }
            }
            int i17 = this.k;
            int round = Math.round(f2 * this.i);
            if (this.c.h() == Integer.MIN_VALUE) {
                round = Math.min(round, this.c.k());
            }
            H(round);
            if (this.k != i17) {
                for (int i18 = 0; i18 < ak3; i18++) {
                    View aw2 = aw(i18);
                    StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) aw2.getLayoutParams();
                    boolean z6 = sbVar.b;
                    if (J() && this.j == 1) {
                        int i19 = -((this.i - 1) - sbVar.a.e);
                        aw2.offsetLeftAndRight((this.k * i19) - (i19 * i17));
                    } else {
                        int i20 = sbVar.a.e;
                        int i21 = this.k * i20;
                        int i22 = i20 * i17;
                        if (this.j == 1) {
                            aw2.offsetLeftAndRight(i21 - i22);
                        } else {
                            aw2.offsetTopAndBottom(i21 - i22);
                        }
                    }
                }
            }
        }
        if (ak() > 0) {
            if (this.e) {
                ae(rhVar, roVar, true);
                af(rhVar, roVar, false);
            } else {
                af(rhVar, roVar, true);
                ae(rhVar, roVar, false);
            }
        }
        if (z && !roVar.g && this.n != 0 && ak() > 0 && r() != null) {
            bm(this.K);
        }
        z2 = false;
        if (roVar.g) {
            this.H.a();
        }
        this.o = saVar.c;
        this.p = J();
        if (z2) {
            this.H.a();
            bo(rhVar, roVar, false);
        }
    }

    private final void bp(RecyclerViewRecycler rhVar, LinearLayoutManagerLayoutState ptVar) {
        if (!ptVar.a || ptVar.i) {
            return;
        }
        if (ptVar.b == 0) {
            if (ptVar.e == -1) {
                bq(rhVar, ptVar.g);
                return;
            } else {
                br(rhVar, ptVar.f);
                return;
            }
        }
        int i = 1;
        if (ptVar.e == -1) {
            int i2 = ptVar.f;
            int f = this.a[0].f(i2);
            while (i < this.i) {
                int f2 = this.a[i].f(i2);
                if (f2 > f) {
                    f = f2;
                }
                i++;
            }
            int i3 = i2 - f;
            bq(rhVar, i3 < 0 ? ptVar.g : ptVar.g - Math.min(i3, ptVar.b));
            return;
        }
        int i4 = ptVar.g;
        int d = this.a[0].d(i4);
        while (i < this.i) {
            int d2 = this.a[i].d(i4);
            if (d2 < d) {
                d = d2;
            }
            i++;
        }
        int i5 = d - ptVar.g;
        br(rhVar, i5 < 0 ? ptVar.f : Math.min(i5, ptVar.b) + ptVar.f);
    }

    private final void bq(RecyclerViewRecycler rhVar, int i) {
        for (int ak = ak() - 1; ak >= 0; ak--) {
            View aw = aw(ak);
            if (this.b.d(aw) < i || this.b.m(aw) < i) {
                return;
            }
            StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) aw.getLayoutParams();
            boolean z = sbVar.b;
            if (sbVar.a.a.size() == 1) {
                return;
            }
            StaggeredGridLazySpanLookup sfVar = sbVar.a;
            int size = sfVar.a.size();
            View view = (View) sfVar.a.remove(size - 1);
            StaggeredGridLayoutParams n = StaggeredGridLazySpanLookup.n(view);
            n.a = null;
            if (n.c() || n.b()) {
                sfVar.d -= sfVar.f.b.b(view);
            }
            if (size == 1) {
                sfVar.b = Integer.MIN_VALUE;
            }
            sfVar.c = Integer.MIN_VALUE;
            aL(aw, rhVar);
        }
    }

    private final void br(RecyclerViewRecycler rhVar, int i) {
        while (ak() > 0) {
            View aw = aw(0);
            if (this.b.a(aw) > i || this.b.l(aw) > i) {
                return;
            }
            StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) aw.getLayoutParams();
            boolean z = sbVar.b;
            if (sbVar.a.a.size() == 1) {
                return;
            }
            StaggeredGridLazySpanLookup sfVar = sbVar.a;
            View view = (View) sfVar.a.remove(0);
            StaggeredGridLayoutParams n = StaggeredGridLazySpanLookup.n(view);
            n.a = null;
            if (sfVar.a.size() == 0) {
                sfVar.c = Integer.MIN_VALUE;
            }
            if (n.c() || n.b()) {
                sfVar.d -= sfVar.f.b.b(view);
            }
            sfVar.b = Integer.MIN_VALUE;
            aL(aw, rhVar);
        }
    }

    private final void bs() {
        this.e = (this.j == 1 || !J()) ? this.d : !this.d;
    }

    private final void bt(int i) {
        LinearLayoutManagerLayoutState ptVar = this.l;
        ptVar.e = i;
        ptVar.d = this.e != (i == -1) ? -1 : 1;
    }

    private final void bu(int i, RecyclerViewState roVar) {
        int i2;
        int i3;
        int i4;
        LinearLayoutManagerLayoutState ptVar = this.l;
        boolean z = false;
        ptVar.b = 0;
        ptVar.c = i;
        if (!aW() || (i4 = roVar.a) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.e == (i4 < i)) {
                i2 = this.b.k();
                i3 = 0;
            } else {
                i3 = this.b.k();
                i2 = 0;
            }
        }
        RecyclerView recyclerView = this.r;
        if (recyclerView == null || !recyclerView.h) {
            this.l.g = this.b.e() + i2;
            this.l.f = -i3;
        } else {
            this.l.f = this.b.j() - i3;
            this.l.g = this.b.f() + i2;
        }
        LinearLayoutManagerLayoutState ptVar2 = this.l;
        ptVar2.h = false;
        ptVar2.a = true;
        if (this.b.h() == 0 && this.b.e() == 0) {
            z = true;
        }
        ptVar2.i = z;
    }

    private final void bv(StaggeredGridLazySpanLookup sfVar, int i, int i2) {
        int i3 = sfVar.d;
        if (i == -1) {
            if (sfVar.e() + i3 <= i2) {
                this.m.set(sfVar.e, false);
            }
        } else if (sfVar.c() - i3 >= i2) {
            this.m.set(sfVar.e, false);
        }
    }

    private final boolean bw(int i) {
        if (this.j == 0) {
            return (i == -1) != this.e;
        }
        return ((i == -1) == this.e) == J();
    }

    private final void bx(View view, int i, int i2) {
        aC(view, this.G);
        StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) view.getLayoutParams();
        int by = by(i, sbVar.leftMargin + this.G.left, sbVar.rightMargin + this.G.right);
        int by2 = by(i2, sbVar.topMargin + this.G.top, sbVar.bottomMargin + this.G.bottom);
        if (aY(view, by, by2, sbVar)) {
            view.measure(by, by2);
        }
    }

    private static final int by(int i, int i2, int i3) {
        if (i2 == 0) {
            if (i3 == 0) {
                return i;
            }
            i2 = 0;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int A(RecyclerViewState roVar) {
        return P(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int B(RecyclerViewState roVar) {
        return Q(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int C(RecyclerViewState roVar) {
        return U(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int D(RecyclerViewState roVar) {
        return P(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int E(RecyclerViewState roVar) {
        return Q(roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int F(RecyclerViewState roVar) {
        return U(roVar);
    }

    public final void G(boolean z) {
        O(null);
        StaggeredGridSavedState seVar = this.F;
        if (seVar != null && seVar.h != z) {
            seVar.h = z;
        }
        this.d = z;
        aO();
    }

    final void H(int i) {
        this.k = i / this.i;
        View.MeasureSpec.makeMeasureSpec(i, this.c.h());
    }

    public final boolean I() {
        int c;
        if (ak() == 0 || this.n == 0 || !this.w) {
            return false;
        }
        if (this.e) {
            c = i();
            c();
        } else {
            c = c();
            i();
        }
        if (c != 0 || r() == null) {
            return false;
        }
        this.h.a();
        this.v = true;
        aO();
        return true;
    }

    final boolean J() {
        return an() == 1;
    }

    @Override // defpackage.SmoothScrollerActionCallback
    public final PointF K(int i) {
        int M = M(i);
        PointF pointF = new PointF();
        if (M == 0) {
            return null;
        }
        if (this.j == 0) {
            pointF.x = M;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = M;
        }
        return pointF;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final Parcelable L() {
        int f;
        int[] iArr;
        StaggeredGridSavedState seVar = this.F;
        if (seVar != null) {
            return new StaggeredGridSavedState(seVar);
        }
        StaggeredGridSavedState seVar2 = new StaggeredGridSavedState();
        seVar2.h = this.d;
        seVar2.i = this.o;
        seVar2.j = this.p;
        StaggeredGridSpanIndices sdVar = this.h;
        if (sdVar == null || (iArr = sdVar.a) == null) {
            seVar2.e = 0;
        } else {
            seVar2.f = iArr;
            seVar2.e = seVar2.f.length;
            seVar2.g = sdVar.b;
        }
        if (ak() > 0) {
            seVar2.a = this.o ? i() : c();
            View l = this.e ? l(true) : q(true);
            seVar2.b = l != null ? bg(l) : -1;
            int i = this.i;
            seVar2.c = i;
            seVar2.d = new int[i];
            for (int i2 = 0; i2 < this.i; i2++) {
                if (this.o) {
                    f = this.a[i2].d(Integer.MIN_VALUE);
                    if (f != Integer.MIN_VALUE) {
                        f -= this.b.f();
                    }
                } else {
                    f = this.a[i2].f(Integer.MIN_VALUE);
                    if (f != Integer.MIN_VALUE) {
                        f -= this.b.j();
                    }
                }
                seVar2.d[i2] = f;
            }
        } else {
            seVar2.a = -1;
            seVar2.b = -1;
            seVar2.c = 0;
        }
        return seVar2;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void O(String str) {
        if (this.F == null) {
            super.O(str);
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void R(AccessibilityEvent accessibilityEvent) {
        super.R(accessibilityEvent);
        if (ak() > 0) {
            View q = q(false);
            View l = l(false);
            if (q == null || l == null) {
                return;
            }
            int bg = bg(q);
            int bg2 = bg(l);
            if (bg < bg2) {
                accessibilityEvent.setFromIndex(bg);
                accessibilityEvent.setToIndex(bg2);
            } else {
                accessibilityEvent.setFromIndex(bg2);
                accessibilityEvent.setToIndex(bg);
            }
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void S(Parcelable parcelable) {
        if (parcelable instanceof StaggeredGridSavedState) {
            StaggeredGridSavedState seVar = (StaggeredGridSavedState) parcelable;
            this.F = seVar;
            if (this.f != -1) {
                seVar.a();
                this.F.b();
            }
            aO();
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void T(int i) {
        StaggeredGridSavedState seVar = this.F;
        if (seVar != null && seVar.a != i) {
            seVar.a();
        }
        this.f = i;
        this.g = Integer.MIN_VALUE;
        aO();
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean W() {
        return this.j == 0;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean X() {
        return this.j == 1;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean Y() {
        return this.n != 0;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void aF(int i) {
        super.aF(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.a[i2].k(i);
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void aG(int i) {
        super.aG(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.a[i2].k(i);
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void aI(int i) {
        if (i == 0) {
            I();
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ac(int i, int i2, RecyclerViewState roVar, LinearLayoutChunkResult pnVar) {
        int i3;
        int i4;
        int d;
        if (1 == this.j) {
            i = i2;
        }
        if (ak() == 0 || i == 0) {
            return;
        }
        u(i, roVar);
        int[] iArr = this.J;
        if (iArr == null || iArr.length < this.i) {
            this.J = new int[this.i];
            i3 = 0;
            i4 = 0;
        } else {
            i3 = 0;
            i4 = 0;
        }
        while (i3 < this.i) {
            LinearLayoutManagerLayoutState ptVar = this.l;
            if (ptVar.d == -1) {
                int i5 = ptVar.f;
                d = i5 - this.a[i3].f(i5);
            } else {
                d = this.a[i3].d(ptVar.g) - this.l.g;
            }
            if (d >= 0) {
                this.J[i4] = d;
                i4++;
            }
            i3++;
        }
        Arrays.sort(this.J, 0, i4);
        for (int i6 = 0; i6 < i4 && this.l.a(roVar); i6++) {
            pnVar.a(this.l.c, this.J[i6]);
            LinearLayoutManagerLayoutState ptVar2 = this.l;
            ptVar2.c += ptVar2.d;
        }
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ah(RecyclerView recyclerView) {
        bm(this.K);
        for (int i = 0; i < this.i; i++) {
            this.a[i].j();
        }
        recyclerView.requestLayout();
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void ai(RecyclerView recyclerView, int i) {
        RecyclerViewSmoothScroller rnVar = new RecyclerViewSmoothScroller(recyclerView.getContext());
        rnVar.a = i;
        aU(rnVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void bk() {
        this.h.a();
        for (int i = 0; i < this.i; i++) {
            this.a[i].j();
        }
    }

    final int c() {
        if (ak() == 0) {
            return 0;
        }
        return bg(aw(0));
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int d(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        return k(i, rhVar, roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final int e(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        return k(i, rhVar, roVar);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final RecyclerViewLayoutParams f() {
        return this.j == 0 ? new StaggeredGridLayoutParams(-2, -1) : new StaggeredGridLayoutParams(-1, -2);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final RecyclerViewLayoutParams g(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new StaggeredGridLayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new StaggeredGridLayoutParams(layoutParams);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final RecyclerViewLayoutParams h(Context context, AttributeSet attributeSet) {
        return new StaggeredGridLayoutParams(context, attributeSet);
    }

    final int i() {
        int ak = ak();
        if (ak == 0) {
            return 0;
        }
        return bg(aw(ak - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x002d, code lost:
    
        if (r8.j == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x004e, code lost:
    
        if (J() != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x001e, code lost:
    
        if (r8.j == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0031, code lost:
    
        r10 = Integer.MIN_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0023, code lost:
    
        if (r8.j == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0028, code lost:
    
        if (r8.j == 1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x002f, code lost:
    
        r10 = -1;
     */
    @Override // defpackage.RecyclerViewLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View j(View view, int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        View av;
        int i2;
        if (ak() == 0 || (av = av(view)) == null) {
            return null;
        }
        bs();
        switch (i) {
            case 1:
                if (this.j == 1) {
                    i2 = -1;
                    break;
                } else {
                    break;
                }
            case 2:
                if (this.j != 1) {
                    if (J()) {
                        i2 = -1;
                        break;
                    } else {
                        i2 = 1;
                        break;
                    }
                }
                i2 = 1;
                break;
            case 17:
                break;
            case 33:
                break;
            case 66:
                break;
            case 130:
                break;
            default:
                i2 = Integer.MIN_VALUE;
                break;
        }
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) av.getLayoutParams();
        boolean z = sbVar.b;
        StaggeredGridLazySpanLookup sfVar = sbVar.a;
        int i3 = i2 == 1 ? i() : c();
        bu(i3, roVar);
        bt(i2);
        LinearLayoutManagerLayoutState ptVar = this.l;
        ptVar.c = ptVar.d + i3;
        ptVar.b = (int) (this.b.k() * 0.33333334f);
        LinearLayoutManagerLayoutState ptVar2 = this.l;
        ptVar2.h = true;
        ptVar2.a = false;
        V(rhVar, ptVar2, roVar);
        this.o = this.e;
        View g = sfVar.g(i3, i2);
        if (g != null && g != av) {
            return g;
        }
        if (bw(i2)) {
            for (int i4 = this.i - 1; i4 >= 0; i4--) {
                View g2 = this.a[i4].g(i3, i2);
                if (g2 != null && g2 != av) {
                    return g2;
                }
            }
        } else {
            for (int i5 = 0; i5 < this.i; i5++) {
                View g3 = this.a[i5].g(i3, i2);
                if (g3 != null && g3 != av) {
                    return g3;
                }
            }
        }
        boolean z2 = !this.d;
        boolean z3 = i2 == -1;
        View N = N(z2 == z3 ? sfVar.a() : sfVar.b());
        if (N != null && N != av) {
            return N;
        }
        if (bw(i2)) {
            for (int i6 = this.i - 1; i6 >= 0; i6--) {
                if (i6 != sfVar.e) {
                    View N2 = N(z2 == z3 ? this.a[i6].a() : this.a[i6].b());
                    if (N2 != null && N2 != av) {
                        return N2;
                    }
                }
            }
        } else {
            for (int i7 = 0; i7 < this.i; i7++) {
                View N3 = N(z2 == z3 ? this.a[i7].a() : this.a[i7].b());
                if (N3 != null && N3 != av) {
                    return N3;
                }
            }
        }
        return null;
    }

    final int k(int i, RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        if (ak() == 0 || i == 0) {
            return 0;
        }
        u(i, roVar);
        int V = V(rhVar, this.l, roVar);
        if (this.l.b >= V) {
            i = i < 0 ? -V : V;
        }
        this.b.n(-i);
        this.o = this.e;
        LinearLayoutManagerLayoutState ptVar = this.l;
        ptVar.b = 0;
        bp(rhVar, ptVar);
        return i;
    }

    final View l(boolean z) {
        int j = this.b.j();
        int f = this.b.f();
        View view = null;
        for (int ak = ak() - 1; ak >= 0; ak--) {
            View aw = aw(ak);
            int d = this.b.d(aw);
            int a = this.b.a(aw);
            if (a > j && d < f) {
                if (a <= f || !z) {
                    return aw;
                }
                if (view == null) {
                    view = aw;
                }
            }
        }
        return view;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void n(RecyclerViewRecycler rhVar, RecyclerViewState roVar) {
        bo(rhVar, roVar, true);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void o(RecyclerViewState roVar) {
        this.f = -1;
        this.g = Integer.MIN_VALUE;
        this.F = null;
        this.H.a();
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void p(Rect rect, int i, int i2) {
        int aj;
        int aj2;
        int ar = ar() + as();
        int at = at() + aq();
        if (this.j == 1) {
            aj2 = aj(i2, rect.height() + at, ao());
            aj = aj(i, (this.k * this.i) + ar, ap());
        } else {
            aj = aj(i, rect.width() + ar, ap());
            aj2 = aj(i2, (this.k * this.i) + at, ao());
        }
        aR(aj, aj2);
    }

    final View q(boolean z) {
        int j = this.b.j();
        int f = this.b.f();
        int ak = ak();
        View view = null;
        for (int i = 0; i < ak; i++) {
            View aw = aw(i);
            int d = this.b.d(aw);
            if (this.b.a(aw) > j && d < f) {
                if (d >= j || !z) {
                    return aw;
                }
                if (view == null) {
                    view = aw;
                }
            }
        }
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0030 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final View r() {
        int i;
        int ak = ak() - 1;
        BitSet bitSet = new BitSet(this.i);
        bitSet.set(0, this.i, true);
        char c = (this.j == 1 && J()) ? (char) 1 : (char) 65535;
        if (this.e) {
            i = -1;
        } else {
            i = ak + 1;
            ak = 0;
        }
        int i2 = ak < i ? 1 : -1;
        while (ak != i) {
            View aw = aw(ak);
            StaggeredGridLayoutParams sbVar = (StaggeredGridLayoutParams) aw.getLayoutParams();
            if (bitSet.get(sbVar.a.e)) {
                StaggeredGridLazySpanLookup sfVar = sbVar.a;
                if (this.e) {
                    if (sfVar.c() < this.b.f()) {
                        boolean z = StaggeredGridLazySpanLookup.n((View) sfVar.a.get(r0.size() - 1)).b;
                        return aw;
                    }
                    bitSet.clear(sbVar.a.e);
                } else {
                    if (sfVar.e() > this.b.j()) {
                        boolean z2 = StaggeredGridLazySpanLookup.n((View) sfVar.a.get(0)).b;
                        return aw;
                    }
                    bitSet.clear(sbVar.a.e);
                }
            }
            boolean z3 = sbVar.b;
            ak += i2;
            if (ak != i) {
                View aw2 = aw(ak);
                if (this.e) {
                    int a = this.b.a(aw);
                    int a2 = this.b.a(aw2);
                    if (a < a2) {
                        return aw;
                    }
                    if (a == a2) {
                        if ((sbVar.a.e - ((StaggeredGridLayoutParams) aw2.getLayoutParams()).a.e >= 0) == (c >= 0)) {
                            return aw;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int d = this.b.d(aw);
                    int d2 = this.b.d(aw2);
                    if (d > d2) {
                        return aw;
                    }
                    if (d != d2) {
                        continue;
                    } else {
                        if ((sbVar.a.e - ((StaggeredGridLayoutParams) aw2.getLayoutParams()).a.e >= 0) == (c >= 0)) {
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean s(RecyclerViewLayoutParams rbVar) {
        return rbVar instanceof StaggeredGridLayoutParams;
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final boolean t() {
        return this.F == null;
    }

    final void u(int i, RecyclerViewState roVar) {
        int c;
        int i2;
        if (i > 0) {
            c = i();
            i2 = 1;
        } else {
            c = c();
            i2 = -1;
        }
        this.l.a = true;
        bu(c, roVar);
        bt(i2);
        LinearLayoutManagerLayoutState ptVar = this.l;
        ptVar.c = c + ptVar.d;
        ptVar.b = Math.abs(i);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void v(int i, int i2) {
        ag(i, i2, 1);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void w() {
        this.h.a();
        aO();
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void x(int i, int i2) {
        ag(i, i2, 8);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void y(int i, int i2) {
        ag(i, i2, 2);
    }

    @Override // defpackage.RecyclerViewLayoutManager
    public final void z(int i, int i2) {
        ag(i, i2, 4);
    }
}
