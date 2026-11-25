package com.android.car.ui;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SecureView extends View {
    private boolean a;

    public SecureView(Context context) {
        super(context);
        this.a = true;
    }

    public final void a() {
        this.a = false;
    }

    @Override // android.view.View
    public final boolean onFilterTouchEventForSecurity(MotionEvent motionEvent) {
        if (this.a) {
            return ((Build.VERSION.SDK_INT >= 29 ? 3 : 1) & motionEvent.getFlags()) == 0 && super.onFilterTouchEventForSecurity(motionEvent);
        }
        return super.onFilterTouchEventForSecurity(motionEvent);
    }

    public SecureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
    }

    public SecureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
    }

    public SecureView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = true;
    }
}
