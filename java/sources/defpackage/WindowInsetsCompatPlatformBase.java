package defpackage;

import android.view.View;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
class WindowInsetsCompatPlatformBase {
    static final AccessibilityNodeProviderHelper d = new WindowInsetsHelperHx().a().f().g().h();
    final AccessibilityNodeProviderHelper e;

    public WindowInsetsCompatPlatformBase(AccessibilityNodeProviderHelper ihVar) {
        this.e = ihVar;
    }

    public AndroidxInsetsValue a() {
        return eh.a;
    }

    public AccessibilityNodeProviderHelper b(int i, int i2, int i3, int i4) {
        return d;
    }

    public void c(View view) {
    }

    public boolean d() {
        return false;
    }

    public void e() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompatPlatformBase)) {
            return false;
        }
        WindowInsetsCompatPlatformBase igVar = (WindowInsetsCompatPlatformBase) obj;
        return d() == igVar.d() && k() == igVar.k() && Objects.equals(a(), igVar.a()) && Objects.equals(g(), igVar.g()) && Objects.equals(l(), igVar.l());
    }

    public void f() {
    }

    public AndroidxInsetsValue g() {
        return eh.a;
    }

    public AccessibilityNodeProviderHelper h() {
        return this.e;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(d()), Boolean.valueOf(k()), a(), g(), l());
    }

    public AccessibilityNodeProviderHelper i() {
        return this.e;
    }

    public void j(AndroidxInsetsValue ehVar) {
    }

    public boolean k() {
        return false;
    }

    public DisplayCutoutCompatValue l() {
        return null;
    }

    public AccessibilityNodeProviderHelper m() {
        return this.e;
    }
}
