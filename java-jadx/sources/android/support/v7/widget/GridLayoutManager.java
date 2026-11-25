package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import defpackage.czd;
import defpackage.ik;
import defpackage.pn;
import defpackage.pq;
import defpackage.pr;
import defpackage.ps;
import defpackage.pw;
import defpackage.px;
import defpackage.py;
import defpackage.ra;
import defpackage.rb;
import defpackage.rh;
import defpackage.ro;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    boolean a;
    public int b;
    int[] c;
    View[] d;
    final SparseIntArray e;
    final SparseIntArray f;
    public ps g;
    final Rect h;

    public GridLayoutManager(int i) {
        this.a = false;
        this.b = -1;
        this.e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new pq();
        this.h = new Rect();
        q(i);
    }

    private final int bo(rh rhVar, ro roVar, int i) {
        if (!roVar.g) {
            return ps.e(i, this.b);
        }
        int a = rhVar.a(i);
        if (a != -1) {
            return ps.e(a, this.b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    private final int bp(rh rhVar, ro roVar, int i) {
        if (!roVar.g) {
            return this.g.a(i, this.b);
        }
        int i2 = this.f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int a = rhVar.a(i);
        if (a != -1) {
            return this.g.a(a, this.b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    private final int bq(rh rhVar, ro roVar, int i) {
        if (!roVar.g) {
            this.g.b();
            return 1;
        }
        int i2 = this.e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (rhVar.a(i) != -1) {
            this.g.b();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    private final void br(int i) {
        int i2;
        int length;
        int[] iArr = this.c;
        int i3 = this.b;
        if (iArr == null || (length = iArr.length) != i3 + 1 || iArr[length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.c = iArr;
    }

    private final void bs() {
        View[] viewArr = this.d;
        if (viewArr == null || viewArr.length != this.b) {
            this.d = new View[this.b];
        }
    }

    private final void bt(View view, int i, boolean z) {
        int i2;
        int i3;
        pr prVar = (pr) view.getLayoutParams();
        Rect rect = prVar.d;
        int i4 = rect.top + rect.bottom + prVar.topMargin + prVar.bottomMargin;
        int i5 = rect.left + rect.right + prVar.leftMargin + prVar.rightMargin;
        int c = c(prVar.a, prVar.b);
        if (this.i == 1) {
            i3 = al(c, i, i5, prVar.width, false);
            i2 = al(this.j.k(), this.C, i4, prVar.height, true);
        } else {
            int al = al(c, i, i4, prVar.height, false);
            int al2 = al(this.j.k(), this.B, i5, prVar.width, true);
            i2 = al;
            i3 = al2;
        }
        bu(view, i3, i2, z);
    }

    private final void bu(View view, int i, int i2, boolean z) {
        rb rbVar = (rb) view.getLayoutParams();
        boolean z2 = true;
        if (!z) {
            z2 = aY(view, i, i2, rbVar);
        } else if (this.x && ra.aV(view.getMeasuredWidth(), i, rbVar.width) && ra.aV(view.getMeasuredHeight(), i2, rbVar.height)) {
            z2 = false;
        }
        if (z2) {
            view.measure(i, i2);
        }
    }

    @Override // defpackage.ra
    public final int a(rh rhVar, ro roVar) {
        if (this.i == 1) {
            return this.b;
        }
        if (roVar.a() <= 0) {
            return 0;
        }
        return bo(rhVar, roVar, roVar.a() - 1) + 1;
    }

    @Override // defpackage.ra
    public final int b(rh rhVar, ro roVar) {
        if (this.i == 0) {
            return this.b;
        }
        if (roVar.a() <= 0) {
            return 0;
        }
        return bo(rhVar, roVar, roVar.a() - 1) + 1;
    }

    final int c(int i, int i2) {
        if (this.i != 1 || !Z()) {
            int[] iArr = this.c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.c;
        int i3 = this.b - i;
        return iArr2[i3] - iArr2[i3 - i2];
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final int d(int i, rh rhVar, ro roVar) {
        bv();
        bs();
        return super.d(i, rhVar, roVar);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final int e(int i, rh rhVar, ro roVar) {
        bv();
        bs();
        return super.e(i, rhVar, roVar);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final rb f() {
        return this.i == 0 ? new pr(-2, -1) : new pr(-1, -2);
    }

    @Override // defpackage.ra
    public final rb g(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new pr((ViewGroup.MarginLayoutParams) layoutParams) : new pr(layoutParams);
    }

    @Override // defpackage.ra
    public final rb h(Context context, AttributeSet attributeSet) {
        return new pr(context, attributeSet);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public final View i(rh rhVar, ro roVar, boolean z, boolean z2) {
        int i;
        int i2;
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
        Q();
        int j = this.j.j();
        int f = this.j.f();
        View view = null;
        View view2 = null;
        while (i != i3) {
            View aw = aw(i);
            int bg = bg(aw);
            if (bg >= 0 && bg < a && bp(rhVar, roVar, bg) == 0) {
                if (((rb) aw.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = aw;
                    }
                } else {
                    if (this.j.d(aw) < f && this.j.a(aw) >= j) {
                        return aw;
                    }
                    if (view == null) {
                        view = aw;
                    }
                }
            }
            i += i2;
        }
        return view != null ? view : view2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final View j(View view, int i, rh rhVar, ro roVar) {
        int ak;
        int i2;
        int i3;
        View view2;
        int i4;
        rh rhVar2 = rhVar;
        ro roVar2 = roVar;
        View av = av(view);
        View view3 = null;
        if (av == null) {
            return null;
        }
        pr prVar = (pr) av.getLayoutParams();
        int i5 = prVar.a;
        int i6 = prVar.b + i5;
        if (super.j(view, i, rhVar, roVar) == null) {
            return null;
        }
        if ((G(i) == 1) != this.l) {
            i2 = ak() - 1;
            ak = -1;
            i3 = -1;
        } else {
            ak = ak();
            i2 = 0;
            i3 = 1;
        }
        boolean z = this.i == 1 && Z();
        int bo = bo(rhVar2, roVar2, i2);
        int i7 = i2;
        int i8 = i3;
        int i9 = -1;
        int i10 = 0;
        int i11 = 0;
        int i12 = -1;
        View view4 = null;
        while (i7 != ak) {
            int i13 = ak;
            int bo2 = bo(rhVar2, roVar2, i7);
            View aw = aw(i7);
            if (aw == av) {
                break;
            }
            if (aw.hasFocusable() && bo2 != bo) {
                if (view3 != null) {
                    break;
                }
                view2 = av;
                i4 = bo;
            } else {
                pr prVar2 = (pr) aw.getLayoutParams();
                int i14 = prVar2.a;
                view2 = av;
                int i15 = prVar2.b + i14;
                if (aw.hasFocusable() && i14 == i5 && i15 == i6) {
                    return aw;
                }
                if (aw.hasFocusable() && view3 == null) {
                    i4 = bo;
                } else if (aw.hasFocusable() || view4 != null) {
                    i4 = bo;
                    int min = Math.min(i15, i6) - Math.max(i14, i5);
                    if (aw.hasFocusable()) {
                        if (min <= i10) {
                            if (min == i10) {
                                if (z != (i14 > i12)) {
                                }
                            }
                        }
                    } else if (view3 == null && bi(aw)) {
                        if (min <= i11) {
                            if (min == i11) {
                                if (z != (i14 > i9)) {
                                }
                            }
                        }
                    }
                } else {
                    i4 = bo;
                }
                if (aw.hasFocusable()) {
                    int i16 = prVar2.a;
                    i10 = Math.min(i15, i6) - Math.max(i14, i5);
                    i12 = i16;
                    view3 = aw;
                } else {
                    int i17 = prVar2.a;
                    i11 = Math.min(i15, i6) - Math.max(i14, i5);
                    i9 = i17;
                    view4 = aw;
                }
            }
            i7 += i8;
            rhVar2 = rhVar;
            roVar2 = roVar;
            ak = i13;
            av = view2;
            bo = i4;
        }
        return view3 != null ? view3 : view4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0242, code lost:
    
        java.util.Arrays.fill(r17.d, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0248, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b1, code lost:
    
        r10 = r20.b;
        r2 = r10 + r7;
        r1 = r10;
        r3 = 0;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01bd, code lost:
    
        if (r20.f != (-1)) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01bf, code lost:
    
        r10 = r20.b;
        r3 = r10 - r7;
        r1 = 0;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c7, code lost:
    
        r10 = r20.b;
        r3 = r10;
        r2 = 0;
        r10 = r10 + r7;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0099, code lost:
    
        r13 = r12 - 1;
        r14 = -1;
        r15 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0093, code lost:
    
        if (r9 != 1) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0095, code lost:
    
        r14 = r12;
        r13 = 0;
        r15 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009e, code lost:
    
        if (r13 == r14) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
    
        r8 = r17.d[r13];
        r7 = (defpackage.pr) r8.getLayoutParams();
        r8 = bq(r18, r19, bg(r8));
        r7.b = r8;
        r7.a = r10;
        r10 = r10 + r8;
        r13 = r13 + r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bd, code lost:
    
        r1 = 0.0f;
        r2 = 0;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c0, code lost:
    
        if (r2 >= r12) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c2, code lost:
    
        r8 = r17.d[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c8, code lost:
    
        if (r20.l != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ca, code lost:
    
        if (r9 != 1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cc, code lost:
    
        aA(r8);
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
    
        aC(r8, r17.h);
        bt(r8, r5, r10);
        r10 = r17.j.b(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f0, code lost:
    
        if (r10 <= r7) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f2, code lost:
    
        r7 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f3, code lost:
    
        r8 = r17.j.c(r8) / ((defpackage.pr) r8.getLayoutParams()).b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0106, code lost:
    
        if (r8 <= r1) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0108, code lost:
    
        r1 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0109, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
    
        r10 = false;
        aB(r8, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d7, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d8, code lost:
    
        if (r9 != 1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00da, code lost:
    
        ay(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00de, code lost:
    
        az(r8, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010e, code lost:
    
        if (r5 == 1073741824) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0110, code lost:
    
        br(java.lang.Math.max(java.lang.Math.round(r1 * r17.b), r6));
        r7 = 0;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0122, code lost:
    
        if (r10 >= r12) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0124, code lost:
    
        r1 = r17.d[r10];
        bt(r1, 1073741824, true);
        r1 = r17.j.b(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0133, code lost:
    
        if (r1 <= r7) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0135, code lost:
    
        r7 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0136, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0139, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013a, code lost:
    
        if (r10 >= r12) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x013c, code lost:
    
        r1 = r17.d[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0146, code lost:
    
        if (r17.j.b(r1) == r7) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0148, code lost:
    
        r2 = (defpackage.pr) r1.getLayoutParams();
        r5 = r2.d;
        r6 = ((r5.top + r5.bottom) + r2.topMargin) + r2.bottomMargin;
        r8 = ((r5.left + r5.right) + r2.leftMargin) + r2.rightMargin;
        r5 = c(r2.a, r2.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0170, code lost:
    
        if (r17.i != 1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0172, code lost:
    
        r2 = al(r5, 1073741824, r8, r2.width, false);
        r5 = android.view.View.MeasureSpec.makeMeasureSpec(r7 - r6, 1073741824);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0192, code lost:
    
        bu(r1, r2, r5, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019a, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0182, code lost:
    
        r8 = android.view.View.MeasureSpec.makeMeasureSpec(r7 - r8, 1073741824);
        r5 = al(r5, 1073741824, r6, r2.height, false);
        r2 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x019d, code lost:
    
        r21.a = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01a2, code lost:
    
        if (r17.i != 1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a7, code lost:
    
        if (r20.f != (-1)) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a9, code lost:
    
        r10 = r20.b;
        r1 = r10 - r7;
        r2 = r10;
        r3 = 0;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01cf, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01d0, code lost:
    
        if (r7 >= r12) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01d2, code lost:
    
        r5 = r17.d[r7];
        r6 = (defpackage.pr) r5.getLayoutParams();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01de, code lost:
    
        if (r17.i != 1) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01e4, code lost:
    
        if (Z() == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01e6, code lost:
    
        r3 = ar() + r17.c[r17.b - r6.a];
        r10 = r3;
        r3 = r3 - r17.j.c(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0225, code lost:
    
        bj(r5, r3, r1, r10, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x022c, code lost:
    
        if (r6.c() != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0232, code lost:
    
        if (r6.b() == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0236, code lost:
    
        r21.d = r5.hasFocusable() | r21.d;
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0234, code lost:
    
        r21.c = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ff, code lost:
    
        r3 = ar() + r17.c[r6.a];
        r10 = r17.j.c(r5) + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0213, code lost:
    
        r1 = at() + r17.c[r6.a];
        r2 = r17.j.c(r5) + r1;
     */
    @Override // android.support.v7.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(rh rhVar, ro roVar, py pyVar, px pxVar) {
        int i;
        View a;
        int i2 = this.j.i();
        int i3 = ak() > 0 ? this.c[this.b] : 0;
        if (i2 != 1073741824) {
            bv();
        }
        int i4 = pyVar.e;
        int i5 = this.b;
        if (i4 != 1) {
            i5 = bp(rhVar, roVar, pyVar.d) + bq(rhVar, roVar, pyVar.d);
            i = 0;
        } else {
            i = 0;
        }
        while (i < this.b && pyVar.d(roVar) && i5 > 0) {
            int i6 = pyVar.d;
            int bq = bq(rhVar, roVar, i6);
            if (bq > this.b) {
                throw new IllegalArgumentException("Item at position " + i6 + " requires " + bq + " spans but GridLayoutManager has only " + this.b + " spans.");
            }
            i5 -= bq;
            if (i5 < 0 || (a = pyVar.a(rhVar)) == null) {
                break;
            }
            this.d[i] = a;
            i++;
        }
        pxVar.b = true;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public final void l(rh rhVar, ro roVar, pw pwVar, int i) {
        bv();
        if (roVar.a() > 0 && !roVar.g) {
            int bp = bp(rhVar, roVar, pwVar.b);
            if (i == 1) {
                while (bp > 0) {
                    int i2 = pwVar.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    pwVar.b = i3;
                    bp = bp(rhVar, roVar, i3);
                }
            } else {
                int a = roVar.a() - 1;
                int i4 = pwVar.b;
                while (i4 < a) {
                    int i5 = i4 + 1;
                    int bp2 = bp(rhVar, roVar, i5);
                    if (bp2 <= bp) {
                        break;
                    }
                    i4 = i5;
                    bp = bp2;
                }
                pwVar.b = i4;
            }
        }
        bs();
    }

    @Override // defpackage.ra
    public final void m(rh rhVar, ro roVar, View view, ik ikVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof pr)) {
            super.aH(view, ikVar);
            return;
        }
        pr prVar = (pr) layoutParams;
        int bo = bo(rhVar, roVar, prVar.a());
        if (this.i == 0) {
            ikVar.c(czd.a(prVar.a, prVar.b, bo, 1));
        } else {
            ikVar.c(czd.a(bo, 1, prVar.a, prVar.b));
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final void n(rh rhVar, ro roVar) {
        if (roVar.g) {
            int ak = ak();
            for (int i = 0; i < ak; i++) {
                pr prVar = (pr) aw(i).getLayoutParams();
                int a = prVar.a();
                this.e.put(a, prVar.b);
                this.f.put(a, prVar.a);
            }
        }
        super.n(rhVar, roVar);
        this.e.clear();
        this.f.clear();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public void o(ro roVar) {
        super.o(roVar);
        this.a = false;
    }

    @Override // defpackage.ra
    public final void p(Rect rect, int i, int i2) {
        int aj;
        int aj2;
        if (this.c == null) {
            super.p(rect, i, i2);
        }
        int ar = ar() + as();
        int at = at() + aq();
        if (this.i == 1) {
            aj2 = aj(i2, rect.height() + at, ao());
            aj = aj(i, this.c[r7.length - 1] + ar, ap());
        } else {
            aj = aj(i, rect.width() + ar, ap());
            aj2 = aj(i2, this.c[r5.length - 1] + at, ao());
        }
        aR(aj, aj2);
    }

    public final void q(int i) {
        if (i == this.b) {
            return;
        }
        this.a = true;
        if (i > 0) {
            this.b = i;
            this.g.d();
            aO();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public final void r(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.r(false);
    }

    @Override // defpackage.ra
    public final boolean s(rb rbVar) {
        return rbVar instanceof pr;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final boolean t() {
        return this.o == null && !this.a;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public final void u(ro roVar, py pyVar, pn pnVar) {
        int i = this.b;
        for (int i2 = 0; i2 < this.b && pyVar.d(roVar) && i > 0; i2++) {
            pnVar.a(pyVar.d, Math.max(0, pyVar.g));
            this.g.b();
            i--;
            pyVar.d += pyVar.e;
        }
    }

    @Override // defpackage.ra
    public final void v(int i, int i2) {
        this.g.d();
        this.g.c();
    }

    @Override // defpackage.ra
    public final void w() {
        this.g.d();
        this.g.c();
    }

    @Override // defpackage.ra
    public final void x(int i, int i2) {
        this.g.d();
        this.g.c();
    }

    @Override // defpackage.ra
    public final void y(int i, int i2) {
        this.g.d();
        this.g.c();
    }

    @Override // defpackage.ra
    public final void z(int i, int i2) {
        this.g.d();
        this.g.c();
    }

    private final void bv() {
        br(this.i == 1 ? (this.D - as()) - ar() : (this.E - aq()) - at());
    }

    public GridLayoutManager(int i, int i2, boolean z) {
        super(i2, z);
        this.a = false;
        this.b = -1;
        this.e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new pq();
        this.h = new Rect();
        q(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = false;
        this.b = -1;
        this.e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new pq();
        this.h = new Rect();
        q(au(context, attributeSet, i, i2).b);
    }
}
