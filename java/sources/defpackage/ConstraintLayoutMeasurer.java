package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConstraintLayoutMeasurer {
    public final ConstraintLayout a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    final /* synthetic */ ConstraintLayout h;

    public ConstraintLayoutMeasurer(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.h = constraintLayout;
        this.a = constraintLayout2;
    }

    private static final boolean b(int i, int i2, int i3) {
        if (NavInstructionTypeEnum == i2) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(NavInstructionTypeEnum);
        View.MeasureSpec.getSize(NavInstructionTypeEnum);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }
        return false;
    }

    public final void a(ConstraintWidget vxVar, WidgetRunIndexHolder wfVar) {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int baseline;
        int max;
        int max2;
        int i;
        int i2;
        if (vxVar == null) {
            return;
        }
        if (vxVar.ag == 8) {
            wfVar.c = 0;
            wfVar.d = 0;
            wfVar.e = 0;
            return;
        }
        if (vxVar.T == null) {
            return;
        }
        int i3 = wfVar.i;
        int i4 = wfVar.j;
        int i5 = wfVar.a;
        int i6 = wfVar.b;
        int i7 = this.b + this.c;
        int i8 = this.d;
        Object obj = vxVar.af;
        int i9 = i3 - 1;
        if (i3 == 0) {
            throw null;
        }
        switch (i9) {
            case 0:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                break;
            case 1:
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i8, -2);
                break;
            case 2:
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i8, -2);
                int i10 = vxVar.s;
                int i11 = wfVar.h;
                if (i11 == 1 || i11 == 2) {
                    int measuredHeight = ((View) obj).getMeasuredHeight();
                    int h = vxVar.h();
                    if (wfVar.h == 2 || i10 != 1 || measuredHeight == h || (obj instanceof GuidelineView) || vxVar.e()) {
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(vxVar.j(), 1073741824);
                        break;
                    }
                }
            case 3:
                int i12 = this.f;
                ConstraintAnchor vwVar = vxVar.J;
                int i13 = vwVar != null ? vwVar.f : 0;
                ConstraintAnchor vwVar2 = vxVar.L;
                if (vwVar2 != null) {
                    i13 += vwVar2.f;
                }
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(i12, i8 + i13, -1);
                break;
            default:
                makeMeasureSpec = 0;
                break;
        }
        int i14 = i4 - 1;
        if (i4 == 0) {
            throw null;
        }
        switch (i14) {
            case 0:
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                break;
            case 1:
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i7, -2);
                break;
            case 2:
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i7, -2);
                int i15 = vxVar.t;
                int i16 = wfVar.h;
                if (i16 == 1 || i16 == 2) {
                    int measuredWidth = ((View) obj).getMeasuredWidth();
                    int j = vxVar.j();
                    if (wfVar.h == 2 || i15 != 1 || measuredWidth == j || (obj instanceof GuidelineView) || vxVar.f()) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(vxVar.h(), 1073741824);
                        break;
                    }
                }
            case 3:
                int i17 = this.g;
                int i18 = vxVar.J != null ? vxVar.K.f : 0;
                if (vxVar.L != null) {
                    i18 += vxVar.M.f;
                }
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i17, i7 + i18, -1);
                break;
            default:
                makeMeasureSpec2 = 0;
                break;
        }
        ConstraintWidget vxVar2 = vxVar.T;
        if (vxVar2 != null && ConstraintWidgetDimensionHolder.b(this.h.e, 256)) {
            View view = (View) obj;
            if (view.getMeasuredWidth() == vxVar.j() && view.getMeasuredWidth() < vxVar2.j() && view.getMeasuredHeight() == vxVar.h() && view.getMeasuredHeight() < vxVar2.h() && view.getBaseline() == vxVar.aa && !vxVar.K() && b(vxVar.H, makeMeasureSpec, vxVar.j()) && b(vxVar.I, makeMeasureSpec2, vxVar.h())) {
                wfVar.c = vxVar.j();
                wfVar.d = vxVar.h();
                wfVar.e = vxVar.aa;
                return;
            }
        }
        boolean z = i4 != 4 ? i4 == 1 : true;
        boolean z2 = i3 != 4 ? i3 == 1 : true;
        boolean z3 = i3 == 3 && vxVar.W > 0.0f;
        boolean z4 = i4 == 3 && vxVar.W > 0.0f;
        if (obj == null) {
            return;
        }
        View view2 = (View) obj;
        ConstraintLayoutLayoutParams_wy wyVar = (ConstraintLayoutLayoutParams_wy) view2.getLayoutParams();
        int i19 = wfVar.h;
        if (i19 != 1 && i19 != 2 && i3 == 3 && vxVar.s == 0 && i4 == 3 && vxVar.t == 0) {
            baseline = 0;
            max = 0;
            max2 = 0;
        } else {
            if ((obj instanceof VirtualLayoutHelperView) && (vxVar instanceof ConstraintHelperWidget)) {
                throw null;
            }
            view2.measure(makeMeasureSpec, makeMeasureSpec2);
            vxVar.A(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth2 = view2.getMeasuredWidth();
            int measuredHeight2 = view2.getMeasuredHeight();
            baseline = view2.getBaseline();
            int i20 = vxVar.v;
            max = i20 > 0 ? Math.max(i20, measuredWidth2) : measuredWidth2;
            int i21 = vxVar.w;
            if (i21 > 0) {
                max = Math.min(i21, max);
            }
            int i22 = vxVar.y;
            max2 = i22 > 0 ? Math.max(i22, measuredHeight2) : measuredHeight2;
            int i23 = makeMeasureSpec2;
            int i24 = vxVar.z;
            if (i24 > 0) {
                max2 = Math.min(i24, max2);
            }
            if (!ConstraintWidgetDimensionHolder.b(this.h.e, 1)) {
                if (z3 && z) {
                    max = (int) ((max2 * vxVar.W) + 0.5f);
                } else if (z4 && z2) {
                    max2 = (int) ((max / vxVar.W) + 0.5f);
                }
            }
            if (measuredWidth2 != max || measuredHeight2 != max2) {
                if (measuredWidth2 != max) {
                    i = 1073741824;
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
                } else {
                    i = 1073741824;
                }
                int makeMeasureSpec3 = measuredHeight2 != max2 ? View.MeasureSpec.makeMeasureSpec(max2, i) : i23;
                view2.measure(makeMeasureSpec, makeMeasureSpec3);
                vxVar.A(makeMeasureSpec, makeMeasureSpec3);
                max = view2.getMeasuredWidth();
                max2 = view2.getMeasuredHeight();
                baseline = view2.getBaseline();
            }
        }
        boolean z5 = baseline != -1;
        wfVar.g = max == wfVar.a ? max2 != wfVar.b : true;
        boolean z6 = z5 | wyVar.ab;
        if (z6) {
            if (baseline == -1) {
                i2 = -1;
                wfVar.c = max;
                wfVar.d = max2;
                wfVar.f = z6;
                wfVar.e = i2;
            }
            if (vxVar.aa != baseline) {
                wfVar.g = true;
            }
        }
        i2 = baseline;
        wfVar.c = max;
        wfVar.d = max2;
        wfVar.f = z6;
        wfVar.e = i2;
    }
}
