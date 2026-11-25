package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.google.android.embedded.projection.R;
import java.lang.reflect.Field;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class hs {
    public static final /* synthetic */ int a = 0;
    private static WeakHashMap b;
    private static Field c;
    private static boolean d;

    static {
        new AtomicInteger(1);
        b = null;
        d = false;
        new hd();
    }

    public static void A(View view, gx gxVar) {
        hl.h(view, gxVar);
    }

    public static void B(View view, CharSequence charSequence) {
        he k = k();
        if (k.c()) {
            hq.b(view, charSequence);
            return;
        }
        if (TextUtils.equals((CharSequence) k.b(view), charSequence)) {
            return;
        }
        gh i = i(view);
        if (i == null) {
            i = new gh();
        }
        u(view, i);
        view.setTag(k.a, charSequence);
        p(view, k.b);
    }

    public static void C(View view) {
        hl.i(view);
    }

    public static boolean D(View view) {
        return hf.a(view);
    }

    public static boolean E(View view) {
        return hg.j(view);
    }

    public static boolean F(View view) {
        return hi.d(view);
    }

    public static boolean G(View view) {
        return hi.e(view);
    }

    public static boolean H(View view) {
        Boolean bool = (Boolean) new gz(Boolean.class).b(view);
        return bool != null && bool.booleanValue();
    }

    public static String[] I(View view) {
        return Build.VERSION.SDK_INT >= 31 ? hr.b(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void J(View view, ih ihVar, Rect rect) {
        hl.c(view, ihVar, rect);
    }

    public static void K(View view, ih ihVar) {
        WindowInsets m = ihVar.m();
        if (m != null) {
            WindowInsets a2 = hj.a(view, m);
            if (a2.equals(m)) {
                return;
            }
            ih.l(a2, view);
        }
    }

    public static void L(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            hp.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void M(View view) {
        hn.b(view, 8);
    }

    public static void N(View view, int i) {
        hm.a(view, i, 3);
    }

    public static bew O(View view) {
        if (b == null) {
            b = new WeakHashMap();
        }
        bew bewVar = (bew) b.get(view);
        if (bewVar != null) {
            return bewVar;
        }
        bew bewVar2 = new bew(view);
        b.put(view, bewVar2);
        return bewVar2;
    }

    private static View.AccessibilityDelegate P(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return hp.a(view);
        }
        if (d) {
            return null;
        }
        if (c == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                c = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                d = true;
                return null;
            }
        }
        Object obj = c.get(view);
        if (obj instanceof View.AccessibilityDelegate) {
            return (View.AccessibilityDelegate) obj;
        }
        return null;
    }

    public static int a(View view) {
        return hg.a(view);
    }

    public static int b(View view) {
        return hn.a(view);
    }

    public static int c(View view) {
        return hh.a(view);
    }

    public static int d(View view) {
        return hg.b(view);
    }

    public static int e(View view) {
        return hg.c(view);
    }

    @Deprecated
    public static int f(View view) {
        return hg.d(view);
    }

    public static ColorStateList g(View view) {
        return hl.a(view);
    }

    public static PorterDuff.Mode h(View view) {
        return hl.b(view);
    }

    public static gh i(View view) {
        View.AccessibilityDelegate P = P(view);
        if (P == null) {
            return null;
        }
        return P instanceof gg ? ((gg) P).a : new gh(P);
    }

    public static gp j(View view, gp gpVar) {
        if (Build.VERSION.SDK_INT >= 31) {
            return hr.a(view, gpVar);
        }
        if (((hi) view.getTag(R.id.tag_on_receive_content_listener)) == null) {
            return hi.f(view, gpVar);
        }
        gp f = hi.f(view, gpVar);
        if (f == null) {
            return null;
        }
        return hi.f(view, f);
    }

    public static he k() {
        return new hb(CharSequence.class);
    }

    public static ih l(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        ih k = ih.k(rootWindowInsets);
        k.p(k);
        k.n(view.getRootView());
        return k;
    }

    public static ih m(View view, ih ihVar) {
        WindowInsets m = ihVar.m();
        if (m != null) {
            WindowInsets b2 = hj.b(view, m);
            if (!b2.equals(m)) {
                return ih.l(b2, view);
            }
        }
        return ihVar;
    }

    public static Display n(View view) {
        return hh.b(view);
    }

    public static CharSequence o(View view) {
        return (CharSequence) new ha(CharSequence.class).b(view);
    }

    static void p(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = false;
            if (o(view) != null && view.getVisibility() == 0) {
                z = true;
            }
            if (hi.a(view) != 0 || z) {
                int i2 = true != z ? 2048 : 32;
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(i2);
                hi.c(obtain, i);
                if (z) {
                    obtain.getText().add(o(view));
                    if (hg.a(view) == 0) {
                        hg.i(view, 1);
                    }
                    ViewParent parent = view.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            break;
                        }
                        if (hg.a((View) parent) == 4) {
                            hg.i(view, 2);
                            break;
                        }
                        parent = parent.getParent();
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        hi.b(view.getParent(), view, view, i);
                        return;
                    } catch (AbstractMethodError e) {
                        Log.e("ViewCompat", String.valueOf(view.getParent().getClass().getSimpleName()).concat(" does not fully implement ViewParent"), e);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            hi.c(obtain2, 32);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(o(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    public static void q(View view) {
        hg.e(view);
    }

    public static void r(View view, Runnable runnable) {
        hg.f(view, runnable);
    }

    public static void s(View view, Runnable runnable, long j) {
        hg.g(view, runnable, j);
    }

    public static void t(View view) {
        hj.c(view);
    }

    public static void u(View view, gh ghVar) {
        if (ghVar == null && (P(view) instanceof gg)) {
            ghVar = new gh();
        }
        view.setAccessibilityDelegate(ghVar == null ? null : ghVar.a);
    }

    public static void v(View view, Drawable drawable) {
        hg.h(view, drawable);
    }

    public static void w(View view, ColorStateList colorStateList) {
        hl.e(view, colorStateList);
    }

    public static void x(View view, PorterDuff.Mode mode) {
        hl.f(view, mode);
    }

    public static void y(View view, float f) {
        hl.g(view, f);
    }

    public static void z(View view, int i) {
        hg.i(view, i);
    }
}
