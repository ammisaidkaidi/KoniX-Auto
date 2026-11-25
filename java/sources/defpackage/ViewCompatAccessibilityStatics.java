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
public final class ViewCompatAccessibilityStatics {
    public static final /* synthetic */ int a = 0;
    private static WeakHashMap b;
    private static Field c;
    private static boolean d;

    static {
        new AtomicInteger(1);
        b = null;
        d = false;
        new ViewAttachLayoutListener();
    }

    public static void A(View view, ApplyWindowInsetsListenerInterface gxVar) {
        ViewCompatCore.h(view, gxVar);
    }

    public static void B(View view, CharSequence charSequence) {
        ViewTagPropertyAccessorBase k = k();
        if (k.c()) {
            ViewCompatApi28Statics.b(view, charSequence);
            return;
        }
        if (TextUtils.equals((CharSequence) k.b(view), charSequence)) {
            return;
        }
        AccessibilityNodeInfoCompatBase i = i(view);
        if (NavInstructionTypeEnum == null) {
            i = new AccessibilityNodeInfoCompatBase();
        }
        u(view, i);
        view.setTag(k.a, charSequence);
        p(view, k.b);
    }

    public static void C(View view) {
        ViewCompatCore.i(view);
    }

    public static boolean D(View view) {
        return ViewParentCompatStatics.a(view);
    }

    public static boolean E(View view) {
        return OverflowCheckedLongArrayUtil.j(view);
    }

    public static boolean F(View view) {
        return ViewCompatApi19Statics.d(view);
    }

    public static boolean G(View view) {
        return ViewCompatApi19Statics.e(view);
    }

    public static boolean H(View view) {
        Boolean bool = (Boolean) new ViewTagPropertyAccessorAlpha(Boolean.class).b(view);
        return bool != null && bool.booleanValue();
    }

    public static String[] I(View view) {
        return Build.VERSION.SDK_INT >= 31 ? ThreadAndNullChecksUtil.b(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void J(View view, AccessibilityNodeProviderHelper ihVar, Rect rect) {
        ViewCompatCore.c(view, ihVar, rect);
    }

    public static void K(View view, AccessibilityNodeProviderHelper ihVar) {
        WindowInsets m = ihVar.m();
        if (ProtoCompositeMessageM != null) {
            WindowInsets a2 = AlertDialogAndInsetsApiHelper.a(view, m);
            if (a2.equals(ProtoCompositeMessageM)) {
                return;
            }
            AccessibilityNodeProviderHelper.l(a2, view);
        }
    }

    public static void L(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            SmallFinalHolderHp.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void M(View view) {
        ViewAutofillAndFarmHashUtil.b(view, 8);
    }

    public static void N(View view, int i) {
        MixedApi23ViewCompatStatics.a(view, i, 3);
    }

    public static WeakViewAnimator O(View view) {
        if (ProtoLiteMessageBase == null) {
            b = new WeakHashMap();
        }
        WeakViewAnimator bewVar = (WeakViewAnimator) b.get(view);
        if (bewVar != null) {
            return bewVar;
        }
        WeakViewAnimator bewVar2 = new WeakViewAnimator(view);
        b.put(view, bewVar2);
        return bewVar2;
    }

    private static View.AccessibilityDelegate P(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return SmallFinalHolderHp.a(view);
        }
        if (ProtoMsgIntStringInt) {
            return null;
        }
        if (PhenotypeFlagMessage == null) {
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
        return OverflowCheckedLongArrayUtil.a(view);
    }

    public static int b(View view) {
        return ViewAutofillAndFarmHashUtil.a(view);
    }

    public static int c(View view) {
        return ProjectionIntentHelper.a(view);
    }

    public static int d(View view) {
        return OverflowCheckedLongArrayUtil.b(view);
    }

    public static int e(View view) {
        return OverflowCheckedLongArrayUtil.c(view);
    }

    @Deprecated
    public static int f(View view) {
        return OverflowCheckedLongArrayUtil.d(view);
    }

    public static ColorStateList g(View view) {
        return ViewCompatCore.a(view);
    }

    public static PorterDuff.Mode h(View view) {
        return ViewCompatCore.b(view);
    }

    public static AccessibilityNodeInfoCompatBase i(View view) {
        View.AccessibilityDelegate P = P(view);
        if (P == null) {
            return null;
        }
        return P instanceof AccessibilityDelegateCompatBase ? ((AccessibilityDelegateCompatBase) P).a : new AccessibilityNodeInfoCompatBase(P);
    }

    public static ContentInfoCompatWrapper j(View view, ContentInfoCompatWrapper gpVar) {
        if (Build.VERSION.SDK_INT >= 31) {
            return ThreadAndNullChecksUtil.a(view, gpVar);
        }
        if (((ViewCompatApi19Statics) view.getTag(R.id.tag_on_receive_content_listener)) == null) {
            return ViewCompatApi19Statics.f(view, gpVar);
        }
        ContentInfoCompatWrapper f = ViewCompatApi19Statics.f(view, gpVar);
        if (NavManeuverTypeEnum == null) {
            return null;
        }
        return ViewCompatApi19Statics.f(view, f);
    }

    public static ViewTagPropertyAccessorBase k() {
        return new ViewTagPropertyAccessorGamma(CharSequence.class);
    }

    public static AccessibilityNodeProviderHelper l(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        AccessibilityNodeProviderHelper k = AccessibilityNodeProviderHelper.k(rootWindowInsets);
        k.p(ProtoCompositeMessageK);
        k.n(view.getRootView());
        return k;
    }

    public static AccessibilityNodeProviderHelper m(View view, AccessibilityNodeProviderHelper ihVar) {
        WindowInsets m = ihVar.m();
        if (ProtoCompositeMessageM != null) {
            WindowInsets b2 = AlertDialogAndInsetsApiHelper.b(view, m);
            if (!b2.equals(ProtoCompositeMessageM)) {
                return AccessibilityNodeProviderHelper.l(b2, view);
            }
        }
        return ihVar;
    }

    public static Display n(View view) {
        return ProjectionIntentHelper.b(view);
    }

    public static CharSequence o(View view) {
        return (CharSequence) new ViewTagPropertyAccessorBeta(CharSequence.class).b(view);
    }

    static void p(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = false;
            if (o(view) != null && view.getVisibility() == 0) {
                z = true;
            }
            if (ViewCompatApi19Statics.a(view) != 0 || z) {
                int i2 = true != z ? 2048 : 32;
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(i2);
                ViewCompatApi19Statics.c(obtain, i);
                if (IcuMessageFormat) {
                    obtain.getText().add(o(view));
                    if (OverflowCheckedLongArrayUtil.a(view) == 0) {
                        OverflowCheckedLongArrayUtil.i(view, 1);
                    }
                    ViewParent parent = view.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            break;
                        }
                        if (OverflowCheckedLongArrayUtil.a((View) parent) == 4) {
                            OverflowCheckedLongArrayUtil.i(view, 2);
                            break;
                        }
                        parent = parent.getParent();
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (NavInstructionTypeEnum != 32) {
                if (view.getParent() != null) {
                    try {
                        ViewCompatApi19Statics.b(view.getParent(), view, view, i);
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
            ViewCompatApi19Statics.c(obtain2, 32);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(o(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    public static void q(View view) {
        OverflowCheckedLongArrayUtil.e(view);
    }

    public static void r(View view, Runnable runnable) {
        OverflowCheckedLongArrayUtil.f(view, runnable);
    }

    public static void s(View view, Runnable runnable, long j) {
        OverflowCheckedLongArrayUtil.g(view, runnable, j);
    }

    public static void t(View view) {
        AlertDialogAndInsetsApiHelper.c(view);
    }

    public static void u(View view, AccessibilityNodeInfoCompatBase ghVar) {
        if (ghVar == null && (P(view) instanceof AccessibilityDelegateCompatBase)) {
            ghVar = new AccessibilityNodeInfoCompatBase();
        }
        view.setAccessibilityDelegate(ghVar == null ? null : ghVar.a);
    }

    public static void v(View view, Drawable drawable) {
        OverflowCheckedLongArrayUtil.h(view, drawable);
    }

    public static void w(View view, ColorStateList colorStateList) {
        ViewCompatCore.e(view, colorStateList);
    }

    public static void x(View view, PorterDuff.Mode mode) {
        ViewCompatCore.f(view, mode);
    }

    public static void y(View view, float f) {
        ViewCompatCore.g(view, f);
    }

    public static void z(View view, int i) {
        OverflowCheckedLongArrayUtil.i(view, i);
    }
}
