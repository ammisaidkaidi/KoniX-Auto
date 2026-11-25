package defpackage;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.android.car.ui.recyclerview.CarUiRecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class api extends RecyclerView {
    private final CarUiRecyclerView P;

    public api(Context context, CarUiRecyclerView carUiRecyclerView) {
        super(context);
        this.P = carUiRecyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView
    public final void I() {
        this.P.invalidateItemDecorations();
    }

    @Override // android.support.v7.widget.RecyclerView
    public final void W(int i) {
        this.P.scrollToPosition(i);
    }

    @Override // android.support.v7.widget.RecyclerView
    public final void Y(qq qqVar) {
        this.P.setAdapter(qqVar);
    }

    @Override // android.support.v7.widget.RecyclerView
    public final qq e() {
        this.P.getAdapter();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        this.P.focusableViewAvailable(view);
    }

    @Override // android.support.v7.widget.RecyclerView
    public final void p(qx qxVar) {
        this.P.addItemDecoration(qxVar);
    }
}
