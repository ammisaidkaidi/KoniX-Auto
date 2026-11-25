package com.android.car.ui.recyclerview;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import defpackage.RecyclerViewAdapter;
import defpackage.ItemTouchHelperCallbackBase;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface CarUiRecyclerView {
    @Deprecated
    void addItemDecoration(ItemTouchHelperCallbackBase qxVar);

    void focusableViewAvailable(View view);

    RecyclerViewAdapter getAdapter();

    @Deprecated
    RecyclerView getRecyclerView();

    View getView();

    @Deprecated
    void invalidateItemDecorations();

    void scrollToPosition(int i);

    void setAdapter(RecyclerViewAdapter qqVar);

    void setClipToPadding(boolean z);

    void setPadding(int i, int i2, int i3, int i4);
}
