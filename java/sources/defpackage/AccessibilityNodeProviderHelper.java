package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AccessibilityNodeProviderHelper {
    public static final AccessibilityNodeProviderHelper a;
    private final WindowInsetsCompatPlatformBase b;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            a = C0004if.c;
        } else {
            a = ig.d;
        }
    }

    public AccessibilityNodeProviderHelper(AccessibilityNodeProviderHelper ihVar) {
        this.b = new WindowInsetsCompatPlatformBase(this);
    }

    static AndroidxInsetsValue e(AndroidxInsetsValue ehVar, int i, int i2, int i3, int i4) {
        int max = Math.max(0, ehVar.b - i);
        int max2 = Math.max(0, ehVar.c - i2);
        int max3 = Math.max(0, ehVar.d - i3);
        int max4 = Math.max(0, ehVar.e - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? ehVar : AndroidxInsetsValue.b(max, max2, max3, max4);
    }

    public static AccessibilityNodeProviderHelper k(WindowInsets windowInsets) {
        return l(windowInsets, null);
    }

    public static AccessibilityNodeProviderHelper l(WindowInsets windowInsets, View view) {
        ez.m(windowInsets);
        AccessibilityNodeProviderHelper ihVar = new AccessibilityNodeProviderHelper(windowInsets);
        if (view != null && ViewCompatAccessibilityStatics.F(view)) {
            ihVar.p(ViewCompatAccessibilityStatics.l(view));
            ihVar.n(view.getRootView());
        }
        return ihVar;
    }

    @Deprecated
    public int a() {
        return this.b.a().e;
    }

    @Deprecated
    public int b() {
        return this.b.a().b;
    }

    @Deprecated
    public int c() {
        return this.b.a().d;
    }

    @Deprecated
    public int d() {
        return this.b.a().c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityNodeProviderHelper) {
            return Objects.equals(this.b, ((AccessibilityNodeProviderHelper) obj).b);
        }
        return false;
    }

    @Deprecated
    public AccessibilityNodeProviderHelper f() {
        return this.b.m();
    }

    @Deprecated
    public AccessibilityNodeProviderHelper g() {
        return this.b.h();
    }

    @Deprecated
    public AccessibilityNodeProviderHelper h() {
        return this.b.i();
    }

    public int hashCode() {
        WindowInsetsCompatPlatformBase igVar = this.b;
        if (igVar == null) {
            return 0;
        }
        return igVar.hashCode();
    }

    public AccessibilityNodeProviderHelper i(int i, int i2, int i3, int i4) {
        return this.b.b(i, i2, i3, i4);
    }

    @Deprecated
    public AccessibilityNodeProviderHelper j(int i, int i2, int i3, int i4) {
        WindowInsetsHelperHx hxVar = new WindowInsetsHelperHx(this);
        hxVar.b(AndroidxInsetsValue.b(i, i2, i3, i4));
        return hxVar.a();
    }

    public WindowInsets m() {
        WindowInsetsCompatPlatformBase igVar = this.b;
        if (igVar instanceof WindowInsetsCompatApi20Impl) {
            return ((WindowInsetsCompatApi20Impl) igVar).a;
        }
        return null;
    }

    public void n(View view) {
        this.b.c(view);
    }

    public void o(AndroidxInsetsValue[] ehVarArr) {
        this.b.e();
    }

    public void p(AccessibilityNodeProviderHelper ihVar) {
        this.b.f();
    }

    public void q(AndroidxInsetsValue ehVar) {
        this.b.j(ehVar);
    }

    public boolean r() {
        return this.b.k();
    }

    private AccessibilityNodeProviderHelper(WindowInsets windowInsets) {
        this.b = Build.VERSION.SDK_INT >= 30 ? new WindowInsetsCompatConsumedImpl_C0004if(this, windowInsets) : Build.VERSION.SDK_INT >= 29 ? new WindowInsetsCompatApi30Impl(this, windowInsets) : new WindowInsetsCompatApi28Impl(this, windowInsets);
    }
}
