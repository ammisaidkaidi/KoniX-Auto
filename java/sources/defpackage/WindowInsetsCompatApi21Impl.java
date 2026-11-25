package defpackage;

import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
class WindowInsetsCompatApi21Impl extends WindowInsetsCompatApi20Impl {
    private AndroidxInsetsValue c;

    public WindowInsetsCompatApi21Impl(AccessibilityNodeProviderHelper ihVar, WindowInsets windowInsets) {
        super(ihVar, windowInsets);
        this.c = null;
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final AndroidxInsetsValue g() {
        if (this.c == null) {
            this.c = AndroidxInsetsValue.b(this.a.getStableInsetLeft(), this.a.getStableInsetTop(), this.a.getStableInsetRight(), this.a.getStableInsetBottom());
        }
        return this.c;
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final AccessibilityNodeProviderHelper h() {
        return AccessibilityNodeProviderHelper.k(this.a.consumeStableInsets());
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final AccessibilityNodeProviderHelper i() {
        return AccessibilityNodeProviderHelper.k(this.a.consumeSystemWindowInsets());
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public void j(AndroidxInsetsValue ehVar) {
        this.c = ehVar;
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final boolean k() {
        return this.a.isConsumed();
    }
}
