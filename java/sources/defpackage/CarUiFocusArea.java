package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.android.car.ui.FocusParkingView;
import com.google.android.embedded.projection.R;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarUiFocusArea {
    public static final List a = Arrays.asList(17, 66, 33, 130);
    public static final List b = Arrays.asList(1, 16777216, 33554432);
    public View A;
    public final ViewTreeObserver.OnGlobalFocusChangeListener B;
    private boolean C;
    private final SparseIntArray D;
    public final ViewGroup c;
    public boolean d;
    public final boolean e;
    public final boolean f;
    public final Drawable g;
    public final Drawable h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public int r;
    public View s;
    public SparseArray t;
    public final SparseIntArray u;
    public SparseArray v;
    public boolean w;
    public final RotaryFocusCache x;
    public final boolean y;
    public FocusAreaProviderInterface z;

    public CarUiFocusArea(ViewGroup viewGroup, AttributeSet attributeSet) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        this.D = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        this.u = sparseIntArray2;
        this.c = viewGroup;
        this.B = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: amp
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                CarUiFocusArea amqVar = CarUiFocusArea.this;
                boolean hasFocus = amqVar.c.hasFocus();
                if (hasFocus) {
                    View focusedChild = amqVar.c.getFocusedChild();
                    while (focusedChild != null && !focusedChild.isFocused()) {
                        focusedChild = focusedChild instanceof ViewGroup ? ((ViewGroup) focusedChild).getFocusedChild() : null;
                    }
                    amqVar.A = focusedChild;
                } else if (amqVar.d) {
                    amqVar.x.a.b(amqVar.A, SystemClock.uptimeMillis());
                    amqVar.A = null;
                }
                if (amqVar.d || !hasFocus || view == null || (view instanceof FocusParkingView)) {
                    amqVar.z = null;
                } else {
                    amqVar.z = ViewParentCompatStatics.m(view);
                    if (amqVar.z == null) {
                        Log.w("FocusAreaHelper", "No ancestor focus area for ".concat(view.toString()));
                    }
                }
                if (amqVar.y && hasFocus && view != null && ViewParentCompatStatics.m(view) == amqVar.c) {
                    amqVar.x.b.clear();
                }
                if ((amqVar.f || amqVar.e) && amqVar.d != hasFocus) {
                    amqVar.c.invalidate();
                }
                amqVar.d = hasFocus;
            }
        };
        Context context = viewGroup.getContext();
        Resources resources = context.getResources();
        this.e = resources.getBoolean(R.bool.car_ui_enable_focus_area_foreground_highlight);
        this.f = resources.getBoolean(R.bool.car_ui_enable_focus_area_background_highlight);
        this.g = resources.getDrawable(R.drawable.car_ui_focus_area_foreground_highlight, context.getTheme());
        this.h = resources.getDrawable(R.drawable.car_ui_focus_area_background_highlight, context.getTheme());
        this.y = resources.getBoolean(R.bool.car_ui_clear_focus_area_history_when_rotating);
        this.x = new RotaryFocusCache(resources.getInteger(R.integer.car_ui_focus_history_cache_type), resources.getInteger(R.integer.car_ui_focus_history_expiration_period_ms), resources.getInteger(R.integer.car_ui_focus_area_history_cache_type), resources.getInteger(R.integer.car_ui_focus_area_history_expiration_period_ms));
        boolean z = true;
        viewGroup.setImportantForAccessibility(1);
        viewGroup.setWillNotDraw(false);
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, amu.i);
        try {
            this.r = obtainStyledAttributes.getResourceId(1, -1);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(7, -1);
            dimensionPixelSize = dimensionPixelSize == -1 ? obtainStyledAttributes.getDimensionPixelSize(6, 0) : dimensionPixelSize;
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(5, -1);
            dimensionPixelSize2 = dimensionPixelSize2 == -1 ? obtainStyledAttributes.getDimensionPixelSize(6, 0) : dimensionPixelSize2;
            int layoutDirection = viewGroup.getLayoutDirection();
            this.q = layoutDirection == 1;
            this.i = layoutDirection == 1 ? dimensionPixelSize2 : dimensionPixelSize;
            this.j = layoutDirection == 1 ? dimensionPixelSize : dimensionPixelSize2;
            int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(8, -1);
            this.k = dimensionPixelSize3;
            if (dimensionPixelSize3 == -1) {
                this.k = obtainStyledAttributes.getDimensionPixelSize(9, 0);
            }
            int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(4, -1);
            this.l = dimensionPixelSize4;
            if (dimensionPixelSize4 == -1) {
                this.l = obtainStyledAttributes.getDimensionPixelSize(9, 0);
            }
            int dimensionPixelSize5 = obtainStyledAttributes.getDimensionPixelSize(21, -1);
            dimensionPixelSize5 = dimensionPixelSize5 == -1 ? obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize) : dimensionPixelSize5;
            int dimensionPixelSize6 = obtainStyledAttributes.getDimensionPixelSize(3, -1);
            dimensionPixelSize6 = dimensionPixelSize6 == -1 ? obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize2) : dimensionPixelSize6;
            boolean z2 = this.q;
            this.m = true != z2 ? dimensionPixelSize5 : dimensionPixelSize6;
            this.n = true != z2 ? dimensionPixelSize6 : dimensionPixelSize5;
            int dimensionPixelSize7 = obtainStyledAttributes.getDimensionPixelSize(22, -1);
            this.o = dimensionPixelSize7;
            if (dimensionPixelSize7 == -1) {
                this.o = obtainStyledAttributes.getDimensionPixelSize(23, this.k);
            }
            int dimensionPixelSize8 = obtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.p = dimensionPixelSize8;
            if (dimensionPixelSize8 == -1) {
                this.p = obtainStyledAttributes.getDimensionPixelSize(23, this.l);
            }
            if (obtainStyledAttributes.hasValue(14)) {
                sparseIntArray.put(17, obtainStyledAttributes.getResourceId(14, -1));
            }
            if (obtainStyledAttributes.hasValue(16)) {
                sparseIntArray.put(66, obtainStyledAttributes.getResourceId(16, -1));
            }
            if (obtainStyledAttributes.hasValue(20)) {
                sparseIntArray.put(33, obtainStyledAttributes.getResourceId(20, -1));
            }
            if (obtainStyledAttributes.hasValue(12)) {
                sparseIntArray.put(130, obtainStyledAttributes.getResourceId(12, -1));
            }
            int resourceId = obtainStyledAttributes.getResourceId(17, -1);
            int i = obtainStyledAttributes.getInt(18, -1);
            boolean z3 = resourceId == -1;
            if (NavInstructionTypeEnum != -1) {
                z = false;
            }
            if (IcuMessageFormat ^ z3) {
                throw new IllegalStateException("nudgeShortcut and nudgeShortcutDirection must be specified together");
            }
            if (resourceId != -1) {
                if (sparseIntArray.size() > 0) {
                    throw new IllegalStateException("Don't use nudgeShortcut/nudgeShortcutDirection and nudge*Shortcut in the same focus area. Use nudge*Shortcut only.");
                }
                sparseIntArray.put(i, resourceId);
            }
            if (obtainStyledAttributes.hasValue(13)) {
                sparseIntArray2.put(17, obtainStyledAttributes.getResourceId(13, -1));
            }
            if (obtainStyledAttributes.hasValue(15)) {
                sparseIntArray2.put(66, obtainStyledAttributes.getResourceId(15, -1));
            }
            if (obtainStyledAttributes.hasValue(19)) {
                sparseIntArray2.put(33, obtainStyledAttributes.getResourceId(19, -1));
            }
            if (obtainStyledAttributes.hasValue(11)) {
                sparseIntArray2.put(130, obtainStyledAttributes.getResourceId(11, -1));
            }
            this.C = obtainStyledAttributes.getBoolean(2, false);
            this.w = obtainStyledAttributes.getBoolean(24, false);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int a(Bundle bundle) {
        if (bundle == null) {
            return -1;
        }
        return bundle.getInt("com.android.car.ui.utils.NUDGE_DIRECTION", -1);
    }

    public final void b() {
        if (this.t != null) {
            return;
        }
        View rootView = this.c.getRootView();
        this.t = new SparseArray();
        Iterator it = a.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            this.t.put(intValue, rootView.findViewById(this.D.get(intValue, -1)));
        }
    }

    public final boolean c() {
        RotaryFocusCache amzVar = this.x;
        return ViewParentCompatStatics.n(this.c, amzVar.a.a(SystemClock.uptimeMillis()), this.C);
    }

    public final boolean d() {
        View rootView = this.c.getRootView();
        return ViewParentCompatStatics.o(rootView, ViewParentCompatStatics.j(rootView.findFocus()), null, false);
    }
}
