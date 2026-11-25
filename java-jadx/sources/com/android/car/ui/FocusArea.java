package com.android.car.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import defpackage.amq;
import defpackage.amt;
import defpackage.amv;
import defpackage.amw;
import defpackage.hf;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FocusArea extends LinearLayout implements amt {
    public final amq a;

    public FocusArea(Context context) {
        this(context, null);
    }

    @Override // defpackage.amt
    public final View a() {
        return this.a.s;
    }

    @Override // defpackage.amt
    public final amq b() {
        return this.a;
    }

    public final void c(int i, int i2, int i3, int i4) {
        amq amqVar = this.a;
        amqVar.m = i;
        amqVar.o = i2;
        amqVar.n = i3;
        amqVar.p = i4;
    }

    public final void d(int i, int i2, int i3, int i4) {
        amq amqVar = this.a;
        if (amqVar.i == i && amqVar.k == i2 && amqVar.j == i3 && amqVar.l == i4) {
            return;
        }
        amqVar.i = i;
        amqVar.k = i2;
        amqVar.j = i3;
        amqVar.l = i4;
        amqVar.c.invalidate();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        amq amqVar = this.a;
        if (amqVar.e && amqVar.d && !amqVar.c.isInTouchMode()) {
            amqVar.g.setBounds(amqVar.i + amqVar.c.getScrollX(), amqVar.k + amqVar.c.getScrollY(), (amqVar.c.getScrollX() + amqVar.c.getWidth()) - amqVar.j, (amqVar.c.getScrollY() + amqVar.c.getHeight()) - amqVar.l);
            amqVar.g.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        return this.a.w ? FocusFinder.getInstance().findNextFocus(this, view, i) : super.focusSearch(view, i);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return "com.android.car.ui.FocusArea";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        amq amqVar = this.a;
        amqVar.c.getViewTreeObserver().addOnGlobalFocusChangeListener(amqVar.B);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        amq amqVar = this.a;
        amqVar.c.getViewTreeObserver().removeOnGlobalFocusChangeListener(amqVar.B);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        amq amqVar = this.a;
        if (amqVar.f && amqVar.d && !amqVar.c.isInTouchMode()) {
            amqVar.h.setBounds(amqVar.i + amqVar.c.getScrollX(), amqVar.k + amqVar.c.getScrollY(), (amqVar.c.getScrollX() + amqVar.c.getWidth()) - amqVar.j, (amqVar.c.getScrollY() + amqVar.c.getHeight()) - amqVar.l);
            amqVar.h.draw(canvas);
        }
    }

    @Override // android.view.View
    protected final void onFinishInflate() {
        super.onFinishInflate();
        amq amqVar = this.a;
        int i = amqVar.r;
        if (i != -1) {
            amqVar.s = amqVar.c.requireViewById(i);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        amq amqVar = this.a;
        Bundle extras = accessibilityNodeInfo.getExtras();
        extras.putInt("com.android.car.ui.utils.FOCUS_AREA_LEFT_BOUND_OFFSET", amqVar.m);
        extras.putInt("com.android.car.ui.utils.FOCUS_AREA_RIGHT_BOUND_OFFSET", amqVar.n);
        extras.putInt("com.android.car.ui.utils.FOCUS_AREA_TOP_BOUND_OFFSET", amqVar.o);
        extras.putInt("com.android.car.ui.utils.FOCUS_AREA_BOTTOM_BOUND_OFFSET", amqVar.p);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        amq amqVar = this.a;
        boolean z2 = amqVar.c.getLayoutDirection() == 1;
        if (amqVar.q != z2) {
            amqVar.q = z2;
            int i5 = amqVar.i;
            amqVar.i = amqVar.j;
            amqVar.j = i5;
            int i6 = amqVar.m;
            amqVar.m = amqVar.n;
            amqVar.n = i6;
        }
    }

    @Override // android.view.ViewGroup
    protected final boolean onRequestFocusInDescendants(int i, Rect rect) {
        return isInTouchMode() ? super.onRequestFocusInDescendants(i, rect) : this.a.d();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        amq amqVar = this.a;
        if (!hasWindowFocus() || amqVar.c.isInTouchMode()) {
            super.onWindowFocusChanged(z);
            return;
        }
        View rootView = amqVar.c.getRootView();
        int j = hf.j(rootView.findFocus());
        if (j >= 3) {
            return;
        }
        hf.o(rootView, j, null, false);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [amt, android.view.ViewGroup] */
    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        int a;
        int i2;
        if (!amq.b.contains(Integer.valueOf(i))) {
            return super.performAccessibilityAction(i, bundle);
        }
        amq amqVar = this.a;
        switch (i) {
            case 1:
                boolean c = amqVar.c();
                if (!c || amqVar.z == null || (a = amq.a(bundle)) == -1) {
                    return c;
                }
                amt amtVar = amqVar.z;
                ?? r0 = amqVar.c;
                long uptimeMillis = SystemClock.uptimeMillis();
                if (amtVar.b().x.a(a, uptimeMillis) != null) {
                    return true;
                }
                switch (a) {
                    case 17:
                        i2 = 66;
                        break;
                    case 33:
                        i2 = 130;
                        break;
                    case 66:
                        i2 = 17;
                        break;
                    case 130:
                        i2 = 33;
                        break;
                    default:
                        throw new IllegalArgumentException("direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT.");
                }
                amv amvVar = r0.b().x.b;
                if (amvVar.a == 1) {
                    return true;
                }
                amvVar.put(Integer.valueOf(i2), new amw(amtVar, uptimeMillis));
                return true;
            case 16777216:
                int a2 = amq.a(bundle);
                amqVar.b();
                View view = (View) amqVar.t.get(a2);
                if (view == null || view.isFocused()) {
                    return false;
                }
                return hf.t(view);
            case 33554432:
                int a3 = amq.a(bundle);
                long uptimeMillis2 = SystemClock.uptimeMillis();
                if (amqVar.v == null) {
                    View rootView = amqVar.c.getRootView();
                    amqVar.v = new SparseArray();
                    Iterator it = amq.a.iterator();
                    while (it.hasNext()) {
                        int intValue = ((Integer) it.next()).intValue();
                        amqVar.v.put(intValue, (amt) rootView.findViewById(amqVar.u.get(intValue, -1)));
                    }
                }
                amt amtVar2 = (amt) amqVar.v.get(a3);
                boolean z = amtVar2 != null && amtVar2.b().c();
                if (z) {
                    return z;
                }
                amt a4 = amqVar.x.a(a3, uptimeMillis2);
                return a4 != null && a4.b().c();
            default:
                return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean restoreDefaultFocus() {
        return this.a.d();
    }

    public FocusArea(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FocusArea(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public FocusArea(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = new amq(this, attributeSet);
    }
}
