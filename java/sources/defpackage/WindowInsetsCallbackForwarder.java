package defpackage;

import android.graphics.Rect;
import android.support.v7.widget.ActionBarContextView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WindowInsetsCallbackForwarder implements ApplyWindowInsetsListenerInterface {
    final /* synthetic */ AppCompatDelegateImpl a;

    public WindowInsetsCallbackForwarder(AppCompatDelegateImpl jwVar) {
        this.a = jwVar;
    }

    @Override // defpackage.ApplyWindowInsetsListenerInterface
    public final AccessibilityNodeProviderHelper a(View view, AccessibilityNodeProviderHelper ihVar) {
        boolean z;
        boolean z2;
        int d = ihVar.d();
        AppCompatDelegateImpl jwVar = this.a;
        int d2 = ihVar.d();
        ActionBarContextView actionBarContextView = jwVar.l;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) jwVar.l.getLayoutParams();
            if (jwVar.l.isShown()) {
                if (jwVar.E == null) {
                    jwVar.E = new Rect();
                    jwVar.F = new Rect();
                }
                Rect rect = jwVar.E;
                Rect rect2 = jwVar.F;
                rect.set(ihVar.b(), ihVar.d(), ihVar.c(), ihVar.a());
                ViewGroup viewGroup = jwVar.q;
                if (tb.a != null) {
                    try {
                        tb.a.invoke(viewGroup, rect, rect2);
                    } catch (Exception e) {
                    }
                }
                int i = rect.top;
                int i2 = rect.left;
                int i3 = rect.right;
                AccessibilityNodeProviderHelper l = ViewCompatAccessibilityStatics.l(jwVar.q);
                int b = l == null ? 0 : l.b();
                int c = l == null ? 0 : l.c();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                if (NavInstructionTypeEnum <= 0 || jwVar.r != null) {
                    View view2 = jwVar.r;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != b || marginLayoutParams2.rightMargin != c) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = b;
                            marginLayoutParams2.rightMargin = c;
                            jwVar.r.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    jwVar.r = new View(jwVar.f);
                    jwVar.r.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = b;
                    layoutParams.rightMargin = c;
                    jwVar.q.addView(jwVar.r, -1, layoutParams);
                }
                View view3 = jwVar.r;
                z = view3 != null;
                if (IcuMessageFormat && view3.getVisibility() != 0) {
                    View view4 = jwVar.r;
                    view4.setBackgroundColor((ViewCompatAccessibilityStatics.f(view4) & 8192) != 0 ? PrimesMetricTransmitter.a(jwVar.f, R.color.abc_decor_view_status_guard_light) : PrimesMetricTransmitter.a(jwVar.f, R.color.abc_decor_view_status_guard));
                }
                if (!jwVar.u && z) {
                    d2 = 0;
                }
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = false;
            }
            if (z2) {
                jwVar.l.setLayoutParams(marginLayoutParams);
            }
        }
        View view5 = jwVar.r;
        if (view5 != null) {
            view5.setVisibility(true == z ? 0 : 8);
        }
        return ViewCompatAccessibilityStatics.m(view, d != d2 ? ihVar.j(ihVar.b(), d2, ihVar.c(), ihVar.a()) : ihVar);
    }
}
