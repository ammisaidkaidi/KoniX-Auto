package defpackage;

import android.content.Context;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.android.car.ui.FocusParkingView;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public class hf {
    static boolean a(View view) {
        return view.hasOnClickListeners();
    }

    public static void b(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof gv) {
            ((gv) viewParent).e(i, i2, iArr, i3);
            return;
        }
        if (i3 == 0) {
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }
    }

    public static void c(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof gw) {
            ((gw) viewParent).f(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof gv) {
            ((gv) viewParent).a(view, i, i2, i3, i4, i5);
            return;
        }
        if (i5 == 0) {
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }
    }

    public static void d(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof gv) {
            ((gv) viewParent).b(view, view2, i, i2);
            return;
        }
        if (i2 == 0) {
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }
    }

    public static void e(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof gv) {
            ((gv) viewParent).c(view, i);
            return;
        }
        if (i == 0) {
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }
    }

    public static boolean f(ViewParent viewParent, View view, float f, float f2, boolean z) {
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
            return false;
        }
    }

    public static boolean g(ViewParent viewParent, View view, float f, float f2) {
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
            return false;
        }
    }

    public static boolean h(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof gv) {
            return ((gv) viewParent).d(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
            return false;
        }
    }

    public static String i(Context context, int i, Object... objArr) {
        Locale locale = Locale.getDefault();
        String string = context.getResources().getString(i);
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return z.a(locale, string, objArr);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static int j(View view) {
        ViewGroup viewGroup;
        if (view == null || (view instanceof FocusParkingView) || !view.isShown()) {
            return 1;
        }
        if (view.isFocusedByDefault()) {
            return 7;
        }
        amt m = m(view);
        if (m != null && view == m.a()) {
            return 6;
        }
        ViewParent parent = view.getParent();
        while (true) {
            viewGroup = null;
            if (parent == null || !(parent instanceof ViewGroup)) {
                break;
            }
            viewGroup = (ViewGroup) parent;
            if (r(viewGroup)) {
                break;
            }
            parent = parent.getParent();
        }
        if (viewGroup != null && (l(viewGroup) == view || k(viewGroup) == view)) {
            return 5;
        }
        if (view.isSelected()) {
            return 4;
        }
        return s(view) ? 2 : 3;
    }

    static View k(View view) {
        return x(view, new arw(view, 1), art.e);
    }

    static View l(View view) {
        return x(view, new arw(view, 0), art.f);
    }

    public static amt m(View view) {
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof amt) {
                return (amt) parent;
            }
        }
        return null;
    }

    public static boolean n(View view, View view2, boolean z) {
        return o(view, 1, view2, z);
    }

    public static boolean o(View view, int i, View view2, boolean z) {
        return z(view, i, view2, z, true);
    }

    public static boolean p(View view) {
        return (view.isFocusable() || TextUtils.equals(view.getContentDescription(), "com.android.car.ui.utils.FOCUS_DELEGATING_CONTAINER")) && view.isEnabled() && view.isShown() && view.getWidth() > 0 && view.getHeight() > 0 && view.isAttachedToWindow() && !(view instanceof FocusParkingView) && (!s(view) || k(view) == null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean q(arx arxVar) {
        if (!(arxVar instanceof View)) {
            return false;
        }
        View view = (View) arxVar;
        View findFocus = view.getRootView().findFocus();
        if (findFocus == null) {
            findFocus = null;
        } else if (findFocus.willNotDraw()) {
            findFocus = null;
        }
        if (findFocus == null || (findFocus instanceof FocusParkingView)) {
            return z(view, j(findFocus), null, false, false);
        }
        return true;
    }

    public static boolean r(View view) {
        CharSequence contentDescription = view.getContentDescription();
        return TextUtils.equals(contentDescription, "com.android.car.ui.utils.ROTARY_CONTAINER") || TextUtils.equals(contentDescription, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE") || TextUtils.equals(contentDescription, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE");
    }

    public static boolean s(View view) {
        CharSequence contentDescription = view.getContentDescription();
        return TextUtils.equals(contentDescription, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE") || TextUtils.equals(contentDescription, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE");
    }

    public static boolean t(View view) {
        if (view == null || !p(view)) {
            return false;
        }
        if (view.isFocused()) {
            return true;
        }
        return view.performAccessibilityAction(1, null);
    }

    public static Object u(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str.concat(" must not be null"));
    }

    public static void v(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean w(char c) {
        if (c < 'a' || c > 'z') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    private static View x(View view, ary aryVar, ary aryVar2) {
        if (aryVar2 != null && aryVar2.a(view)) {
            return null;
        }
        if (aryVar.a(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View x = x(viewGroup.getChildAt(i), aryVar, aryVar2);
                if (x != null) {
                    return x;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static View y(View view) {
        if (!view.isShown()) {
            return null;
        }
        if (view instanceof amt) {
            View a = ((amt) view).a();
            if (a != null && p(a)) {
                return a;
            }
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View y = y(viewGroup.getChildAt(i));
                if (y != null) {
                    return y;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean z(View view, int i, View view2, boolean z, boolean z2) {
        final arx arxVar;
        View k;
        if (!z && t(view2)) {
            return true;
        }
        if (i < 7 && t(x(view, new arw(view, 2), art.g))) {
            return true;
        }
        if (i < 6 && t(y(view))) {
            return true;
        }
        if (i < 5) {
            View x = x(view, art.j, art.b);
            if (x == null) {
                k = null;
            } else {
                View l = l(x);
                k = l != null ? l : k(x);
            }
            if (t(k)) {
                return true;
            }
        }
        if (i < 4 && t(l(view))) {
            return true;
        }
        if (z2 && i < 5 && (arxVar = (arx) x(view, art.h, art.i)) != 0 && !arxVar.f()) {
            if (arxVar instanceof View) {
                final View view3 = (View) arxVar;
                final Runnable[] runnableArr = {r8};
                final Runnable runnable = new Runnable() { // from class: arv
                    @Override // java.lang.Runnable
                    public final void run() {
                        arx arxVar2 = arx.this;
                        arxVar2.c(runnableArr[0]);
                        hf.q(arxVar2);
                    }
                };
                Runnable runnable2 = new Runnable() { // from class: aru
                    @Override // java.lang.Runnable
                    public final void run() {
                        arx arxVar2 = arx.this;
                        View view4 = view3;
                        Runnable runnable3 = runnable;
                        Runnable[] runnableArr2 = runnableArr;
                        if (hf.q(arxVar2)) {
                            view4.removeCallbacks(runnable3);
                            arxVar2.c(runnableArr2[0]);
                        }
                    }
                };
                arxVar.b(runnable2);
                view3.postDelayed(runnable, 3000L);
            }
            return false;
        }
        if (z && t(view2)) {
            return true;
        }
        if (i < 3 && x(view, new arw(view, 3), art.a) != null) {
            return true;
        }
        if (i < 2) {
            return t(x(view, art.c, art.d));
        }
        return false;
    }
}
