package defpackage;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
class WindowInsetsCompatApi28Impl extends WindowInsetsCompatApi21Impl {
    public WindowInsetsCompatApi28Impl(AccessibilityNodeProviderHelper ihVar, WindowInsets windowInsets) {
        super(ihVar, windowInsets);
    }

    @Override // defpackage.WindowInsetsCompatApi20Impl, defpackage.WindowInsetsCompatPlatformBase
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompatApi28Impl)) {
            return false;
        }
        WindowInsetsCompatApi28Impl idVar = (WindowInsetsCompatApi28Impl) obj;
        return Objects.equals(this.a, idVar.a) && Objects.equals(this.b, idVar.b);
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final DisplayCutoutCompatValue l() {
        DisplayCutout displayCutout = this.a.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new DisplayCutoutCompatValue(displayCutout);
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final AccessibilityNodeProviderHelper m() {
        return AccessibilityNodeProviderHelper.k(this.a.consumeDisplayCutout());
    }
}
