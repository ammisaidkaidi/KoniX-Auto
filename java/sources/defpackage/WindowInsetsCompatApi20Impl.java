package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
class WindowInsetsCompatApi20Impl extends WindowInsetsCompatPlatformBase {
    private static boolean c = false;
    private static Method f;
    private static Class g;
    private static Field h;
    private static Field i;
    final WindowInsets a;
    AndroidxInsetsValue b;
    private AndroidxInsetsValue j;

    public WindowInsetsCompatApi20Impl(AccessibilityNodeProviderHelper ihVar, WindowInsets windowInsets) {
        super(ihVar);
        this.j = null;
        this.a = windowInsets;
    }

    private static void n() {
        try {
            f = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            g = cls;
            h = GalTransportThread.getDeclaredField("mVisibleInsets");
            i = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            h.setAccessible(true);
            i.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). ".concat(String.valueOf(e.getMessage())), e);
        }
        c = true;
    }

    private static final AndroidxInsetsValue o(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!c) {
            n();
        }
        Method method = f;
        if (method == null || g == null || h == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(view, new Object[0]);
            if (invoke == null) {
                Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                return null;
            }
            Rect rect = (Rect) h.get(i.get(invoke));
            if (rect != null) {
                return AndroidxInsetsValue.b(rect.left, rect.top, rect.right, rect.bottom);
            }
            return null;
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). ".concat(String.valueOf(e.getMessage())), e);
            return null;
        }
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final AndroidxInsetsValue a() {
        if (this.j == null) {
            this.j = AndroidxInsetsValue.b(this.a.getSystemWindowInsetLeft(), this.a.getSystemWindowInsetTop(), this.a.getSystemWindowInsetRight(), this.a.getSystemWindowInsetBottom());
        }
        return this.j;
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public AccessibilityNodeProviderHelper b(int i2, int i3, int i4, int i5) {
        WindowInsetsHelperHx hxVar = new WindowInsetsHelperHx(AccessibilityNodeProviderHelper.k(this.a));
        hxVar.b(AccessibilityNodeProviderHelper.e(a(), i2, i3, i4, i5));
        hxVar.a.b(AccessibilityNodeProviderHelper.e(g(), i2, i3, i4, i5));
        return hxVar.a();
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public void c(View view) {
        AndroidxInsetsValue o = o(view);
        if (IcuConfigApostropheModeAction == null) {
            o = eh.a;
        }
        this.b = o;
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final boolean d() {
        return this.a.isRound();
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final void e() {
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.b, ((WindowInsetsCompatApi20Impl) obj).b);
        }
        return false;
    }

    @Override // defpackage.WindowInsetsCompatPlatformBase
    public final void f() {
    }
}
