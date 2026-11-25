package com.android.car.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import com.android.car.ui.FocusParkingView;
import com.google.android.embedded.projection.R;
import defpackage.FocusParkingLayoutListener;
import defpackage.FocusAreaProviderInterface;
import defpackage.CarUiStyleableAttrs;
import defpackage.RotaryFocusCacheEntry;
import defpackage.ViewParentCompatStatics;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FocusParkingView extends View {
    ViewGroup a;
    public boolean b;
    private View c;
    private RotaryFocusCacheEntry d;
    private boolean e;
    private final ViewTreeObserver.OnGlobalFocusChangeListener f;

    public FocusParkingView(Context context) {
        super(context);
        this.b = true;
        this.f = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: amr
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                FocusParkingView focusParkingView = FocusParkingView.this;
                if (true == (view2 instanceof FocusParkingView)) {
                    view2 = null;
                }
                focusParkingView.a(view2);
            }
        };
        b(context, null);
    }

    private final void b(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            this.b = context.obtainStyledAttributes(attributeSet, amu.h).getBoolean(0, true);
        }
        setFocusable(1);
        setVisibility(0);
        setEnabled(true);
        setClickable(false);
        setAlpha(0.0f);
        setDefaultFocusHighlightEnabled(false);
        Resources resources = getResources();
        this.d = new RotaryFocusCacheEntry(resources.getInteger(R.integer.car_ui_focus_history_cache_type), resources.getInteger(R.integer.car_ui_focus_history_expiration_period_ms));
        this.e = resources.getBoolean(R.bool.car_ui_focus_area_default_focus_overrides_history);
    }

    private final boolean c(boolean z) {
        ViewGroup viewGroup;
        if (z && isInTouchMode()) {
            return false;
        }
        View view = this.c;
        if (view != null && view.isFocused() && this.c.isAttachedToWindow()) {
            return true;
        }
        View view2 = this.c;
        if (view2 != null && !view2.isAttachedToWindow() && this.c.getParent() != null && (viewGroup = this.a) != null && viewGroup.isAttachedToWindow() && this.a.isShown()) {
            ViewGroup viewGroup2 = this.a;
            RecyclerView recyclerView = viewGroup2 instanceof RecyclerView ? (RecyclerView) viewGroup2 : null;
            if (viewGroup2.requestFocus()) {
                if (recyclerView != null && recyclerView.ak()) {
                    getViewTreeObserver().addOnGlobalLayoutListener(new FocusParkingLayoutListener(this, recyclerView));
                }
                return true;
            }
        }
        if (ViewParentCompatStatics.n(getRootView(), this.d.a(SystemClock.uptimeMillis()), this.e)) {
            return true;
        }
        return super.requestFocus(130, null);
    }

    public final void a(View view) {
        View view2 = this.c;
        if (view2 != null) {
            this.d.b(view2, SystemClock.uptimeMillis());
        }
        this.c = view;
        ViewGroup viewGroup = null;
        if (view != null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (parent == null || !(parent instanceof ViewGroup) || (parent instanceof FocusAreaProviderInterface)) {
                    break;
                }
                ViewGroup viewGroup2 = (ViewGroup) parent;
                if (ViewParentCompatStatics.s(viewGroup2)) {
                    viewGroup = viewGroup2;
                    break;
                }
                parent = parent.getParent();
            }
        }
        this.a = viewGroup;
    }

    @Override // android.view.View
    public final CharSequence getAccessibilityClassName() {
        return FocusParkingView.class.getName();
    }

    @Override // android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.f);
    }

    @Override // android.view.View
    protected final void onDetachedFromWindow() {
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.f);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        setMeasuredDimension(1, 1);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        if (!z) {
            super.requestFocus(130, null);
            a(null);
        } else if (isFocused()) {
            c(true);
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        switch (i) {
            case 1:
                if (hasFocus()) {
                    return false;
                }
                return super.requestFocus(130, null);
            case 67108864:
                return c(false);
            case 134217728:
                return ((InputMethodManager) getContext().getSystemService(InputMethodManager.class)).hideSoftInputFromWindow(getWindowToken(), 0);
            case 268435456:
                return false;
            default:
                return super.performAccessibilityAction(i, bundle);
        }
    }

    @Override // android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        return !this.b ? super.requestFocus(i, rect) : c(true);
    }

    @Override // android.view.View
    public final boolean restoreDefaultFocus() {
        return !this.b ? super.restoreDefaultFocus() : c(true);
    }

    public FocusParkingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = true;
        this.f = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: amr
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                FocusParkingView focusParkingView = FocusParkingView.this;
                if (true == (view2 instanceof FocusParkingView)) {
                    view2 = null;
                }
                focusParkingView.a(view2);
            }
        };
        b(context, attributeSet);
    }

    public FocusParkingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = true;
        this.f = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: amr
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                FocusParkingView focusParkingView = FocusParkingView.this;
                if (true == (view2 instanceof FocusParkingView)) {
                    view2 = null;
                }
                focusParkingView.a(view2);
            }
        };
        b(context, attributeSet);
    }

    public FocusParkingView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = true;
        this.f = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: amr
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                FocusParkingView focusParkingView = FocusParkingView.this;
                if (true == (view2 instanceof FocusParkingView)) {
                    view2 = null;
                }
                focusParkingView.a(view2);
            }
        };
        b(context, attributeSet);
    }
}
