package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ViewCompatApi26Statics {
    static CharSequence a(View view) {
        return view.getAccessibilityPaneTitle();
    }

    static boolean b(View view) {
        return view.isAccessibilityHeading();
    }

    static boolean c(View view) {
        return view.isScreenReaderFocusable();
    }

    public static int d(RecyclerViewState roVar, RecyclerViewOrientationHelper qmVar, View view, View view2, RecyclerViewLayoutManager raVar, boolean z) {
        if (raVar.ak() == 0 || roVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(ra.bg(view) - ra.bg(view2)) + 1;
        }
        return Math.min(qmVar.k(), qmVar.a(view2) - qmVar.d(view));
    }

    public static int e(RecyclerViewState roVar, RecyclerViewOrientationHelper qmVar, View view, View view2, RecyclerViewLayoutManager raVar, boolean z, boolean z2) {
        if (raVar.ak() == 0 || roVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (roVar.a() - Math.max(ra.bg(view), ra.bg(view2))) - 1) : Math.max(0, Math.min(ra.bg(view), ra.bg(view2)));
        return !z ? max : Math.round((max * (Math.abs(qmVar.a(view2) - qmVar.d(view)) / (Math.abs(ra.bg(view) - ra.bg(view2)) + 1))) + (qmVar.j() - qmVar.d(view)));
    }

    public static int f(RecyclerViewState roVar, RecyclerViewOrientationHelper qmVar, View view, View view2, RecyclerViewLayoutManager raVar, boolean z) {
        if (raVar.ak() == 0 || roVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        return !z ? roVar.a() : (int) (((qmVar.a(view2) - qmVar.d(view)) / (Math.abs(ra.bg(view) - ra.bg(view2)) + 1)) * roVar.a());
    }
}
