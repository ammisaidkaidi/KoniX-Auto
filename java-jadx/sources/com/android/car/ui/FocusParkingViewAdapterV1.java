package com.android.car.ui;

import android.view.View;
import com.android.car.ui.plugin.oemapis.FocusParkingViewOEMV1;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FocusParkingViewAdapterV1 implements FocusParkingViewOEMV1 {
    private final FocusParkingView mFocusParkingView;

    public FocusParkingViewAdapterV1(FocusParkingView focusParkingView) {
        this.mFocusParkingView = focusParkingView;
    }

    public View getView() {
        return this.mFocusParkingView;
    }

    public void setShouldRestoreFocus(boolean z) {
        this.mFocusParkingView.b = z;
    }
}
