package com.android.car.ui.recyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public class CarUiRecyclerViewContainer extends FrameLayout {
    public CarUiRecyclerViewContainer(Context context) {
        this(context, null);
    }

    public CarUiRecyclerViewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CarUiRecyclerViewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, R.layout.car_ui_recycler_view_only, this);
    }
}
