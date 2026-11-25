package defpackage;

import android.view.View;
import com.android.car.ui.baselayout.Insets;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ank {
    public final View a;
    public final View b;
    public final View c;
    public final View d;
    public final View e;
    public final View f;
    public anc g;
    public Insets h = new Insets();

    public ank(View view, View view2) {
        this.a = view2;
        View g = aro.g(view, R.id.car_ui_base_layout_content_container);
        this.b = g;
        View findViewWithTag = view.findViewWithTag("car_ui_left_inset");
        this.c = findViewWithTag;
        View findViewWithTag2 = view.findViewWithTag("car_ui_right_inset");
        this.d = findViewWithTag2;
        View findViewWithTag3 = view.findViewWithTag("car_ui_top_inset");
        this.e = findViewWithTag3;
        View findViewWithTag4 = view.findViewWithTag("car_ui_bottom_inset");
        this.f = findViewWithTag4;
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: anj
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                ank ankVar = ank.this;
                if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
                    return;
                }
                int max = Math.max(0, ank.d(ankVar.b) - ank.d(ankVar.a));
                int max2 = Math.max(0, ank.b(ankVar.b) - ank.b(ankVar.a));
                int max3 = Math.max(0, ank.c(ankVar.a) - ank.c(ankVar.b));
                int max4 = Math.max(0, ank.a(ankVar.a) - ank.a(ankVar.b));
                View view4 = ankVar.e;
                if (view4 != null) {
                    max += Math.max(0, ank.a(view4) - ank.d(ankVar.b));
                }
                if (ankVar.f != null) {
                    max4 += Math.max(0, ank.a(ankVar.b) - ank.d(ankVar.f));
                }
                View view5 = ankVar.c;
                if (view5 != null) {
                    max2 += Math.max(0, ank.c(view5) - ank.b(ankVar.b));
                }
                if (ankVar.d != null) {
                    max3 += Math.max(0, ank.c(ankVar.b) - ank.b(ankVar.d));
                }
                Insets insets = new Insets(max2, max, max3, max4);
                if (insets.equals(ankVar.h)) {
                    return;
                }
                ankVar.h = insets;
                anc ancVar = ankVar.g;
                if (ancVar != null) {
                    ancVar.a(insets);
                } else {
                    ankVar.a.setPadding(insets.getLeft(), insets.getTop(), insets.getRight(), insets.getBottom());
                }
            }
        };
        if (findViewWithTag != null) {
            findViewWithTag.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        if (findViewWithTag2 != null) {
            findViewWithTag2.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        if (findViewWithTag3 != null) {
            findViewWithTag3.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        if (findViewWithTag4 != null) {
            findViewWithTag4.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        view2.addOnLayoutChangeListener(onLayoutChangeListener);
        g.addOnLayoutChangeListener(onLayoutChangeListener);
    }

    public static int a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1] + view.getHeight();
    }

    public static int b(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0];
    }

    public static int c(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0] + view.getWidth();
    }

    public static int d(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }
}
