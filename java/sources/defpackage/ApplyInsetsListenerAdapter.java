package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ApplyInsetsListenerAdapter implements View.OnApplyWindowInsetsListener {
    AccessibilityNodeProviderHelper a = null;
    final /* synthetic */ View b;
    final /* synthetic */ ApplyWindowInsetsListenerInterface c;

    public ApplyInsetsListenerAdapter(View view, ApplyWindowInsetsListenerInterface gxVar) {
        this.b = view;
        this.c = gxVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        AccessibilityNodeProviderHelper l = AccessibilityNodeProviderHelper.l(windowInsets, view);
        if (Build.VERSION.SDK_INT < 30) {
            ViewCompatCore.d(windowInsets, this.b);
            if (l.equals(this.a)) {
                return this.c.a(view, l).m();
            }
        }
        this.a = l;
        AccessibilityNodeProviderHelper a = this.c.a(view, l);
        if (Build.VERSION.SDK_INT >= 30) {
            return a.m();
        }
        ViewCompatAccessibilityStatics.t(view);
        return a.m();
    }
}
