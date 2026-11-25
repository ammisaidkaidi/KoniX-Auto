package defpackage;

import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
class WindowInsetsCompatApi30Impl extends WindowInsetsCompatApi28Impl {
    public WindowInsetsCompatApi30Impl(AccessibilityNodeProviderHelper ihVar, WindowInsets windowInsets) {
        super(ihVar, windowInsets);
    }

    @Override // defpackage.WindowInsetsCompatApi20Impl, defpackage.WindowInsetsCompatPlatformBase
    public final AccessibilityNodeProviderHelper b(int i, int i2, int i3, int i4) {
        return AccessibilityNodeProviderHelper.k(this.a.inset(i, i2, i3, i4));
    }

    @Override // defpackage.WindowInsetsCompatApi21Impl, defpackage.WindowInsetsCompatPlatformBase
    public final void j(AndroidxInsetsValue ehVar) {
    }
}
