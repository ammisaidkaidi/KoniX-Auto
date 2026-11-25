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
class ib extends ig {
    private static boolean c = false;
    private static Method f;
    private static Class g;
    private static Field h;
    private static Field i;
    final WindowInsets a;
    eh b;
    private eh j;

    public ib(ih ihVar, WindowInsets windowInsets) {
        super(ihVar);
        this.j = null;
        this.a = windowInsets;
    }

    private static void n() {
        try {
            f = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            g = cls;
            h = cls.getDeclaredField("mVisibleInsets");
            i = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            h.setAccessible(true);
            i.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). ".concat(String.valueOf(e.getMessage())), e);
        }
        c = true;
    }

    private static final eh o(View view) {
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
                return eh.b(rect.left, rect.top, rect.right, rect.bottom);
            }
            return null;
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). ".concat(String.valueOf(e.getMessage())), e);
            return null;
        }
    }

    @Override // defpackage.ig
    public final eh a() {
        if (this.j == null) {
            this.j = eh.b(this.a.getSystemWindowInsetLeft(), this.a.getSystemWindowInsetTop(), this.a.getSystemWindowInsetRight(), this.a.getSystemWindowInsetBottom());
        }
        return this.j;
    }

    @Override // defpackage.ig
    public ih b(int i2, int i3, int i4, int i5) {
        hx hxVar = new hx(ih.k(this.a));
        hxVar.b(ih.e(a(), i2, i3, i4, i5));
        hxVar.a.b(ih.e(g(), i2, i3, i4, i5));
        return hxVar.a();
    }

    @Override // defpackage.ig
    public void c(View view) {
        eh o = o(view);
        if (o == null) {
            o = eh.a;
        }
        this.b = o;
    }

    @Override // defpackage.ig
    public final boolean d() {
        return this.a.isRound();
    }

    @Override // defpackage.ig
    public final void e() {
    }

    @Override // defpackage.ig
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.b, ((ib) obj).b);
        }
        return false;
    }

    @Override // defpackage.ig
    public final void f() {
    }
}
