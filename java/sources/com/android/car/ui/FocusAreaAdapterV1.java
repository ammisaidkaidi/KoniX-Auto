package com.android.car.ui;

import android.view.View;
import android.widget.LinearLayout;
import com.android.car.ui.plugin.oemapis.FocusAreaOEMV1;
import defpackage.CarUiFocusArea;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FocusAreaAdapterV1 implements FocusAreaOEMV1 {
    private final FocusArea mFocusArea;

    public FocusAreaAdapterV1(FocusArea focusArea) {
        this.mFocusArea = focusArea;
    }

    public LinearLayout getView() {
        return this.mFocusArea;
    }

    public void setBoundsOffset(int i, int i2, int i3, int i4) {
        this.mFocusArea.c(i, i2, i3, i4);
    }

    public void setDefaultFocus(View view) {
        this.mFocusArea.a.s = view;
    }

    public void setHighlightPadding(int i, int i2, int i3, int i4) {
        this.mFocusArea.d(i, i2, i3, i4);
    }

    public void setNudgeShortcut(int i, View view) {
        CarUiFocusArea amqVar = this.mFocusArea.a;
        if (!CarUiFocusArea.a.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT.");
        }
        amqVar.b();
        if (view == null) {
            amqVar.t.remove(i);
        } else {
            amqVar.t.put(i, view);
        }
    }

    public void setWrapAround(boolean z) {
        this.mFocusArea.a.w = z;
    }
}
