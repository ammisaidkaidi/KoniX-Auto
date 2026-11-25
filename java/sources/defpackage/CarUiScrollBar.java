package defpackage;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface CarUiScrollBar {
    void adapterChanged(RecyclerViewAdapter qqVar);

    void initialize(Context context, RecyclerView recyclerView, View view);

    void requestLayout();

    void setHighlightThumb(boolean z);

    void setPadding(int i, int i2);
}
