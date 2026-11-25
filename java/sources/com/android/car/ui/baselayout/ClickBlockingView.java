package com.android.car.ui.baselayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ClickBlockingView extends View {
    private boolean a;
    private boolean b;

    public ClickBlockingView(Context context) {
        super(context);
        this.a = false;
        this.b = false;
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int i = 9;
        if (actionMasked == 9) {
            this.b = false;
            actionMasked = 9;
        }
        if (!this.b) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9) {
                if (!onHoverEvent) {
                    this.b = true;
                }
                if (i != 10 || i == 3) {
                    this.b = false;
                }
                return true;
            }
        }
        i = actionMasked;
        if (i != 10) {
        }
        this.b = false;
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.a = false;
            actionMasked = 0;
        }
        if (!this.a) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0) {
                if (!onTouchEvent) {
                    this.a = true;
                }
                actionMasked = 0;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.a = false;
        }
        return true;
    }

    public ClickBlockingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        this.b = false;
    }

    public ClickBlockingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        this.b = false;
    }

    public ClickBlockingView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = false;
        this.b = false;
    }
}
