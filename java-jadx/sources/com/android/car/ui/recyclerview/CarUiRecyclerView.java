package com.android.car.ui.recyclerview;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import defpackage.qq;
import defpackage.qx;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface CarUiRecyclerView {
    @Deprecated
    void addItemDecoration(qx qxVar);

    void focusableViewAvailable(View view);

    qq getAdapter();

    @Deprecated
    RecyclerView getRecyclerView();

    View getView();

    @Deprecated
    void invalidateItemDecorations();

    void scrollToPosition(int i);

    void setAdapter(qq qqVar);

    void setClipToPadding(boolean z);

    void setPadding(int i, int i2, int i3, int i4);
}
