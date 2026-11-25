package defpackage;

import com.android.car.ui.recyclerview.DefaultScrollBar;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class apd extends qs {
    final /* synthetic */ DefaultScrollBar a;

    public apd(DefaultScrollBar defaultScrollBar) {
        this.a = defaultScrollBar;
    }

    @Override // defpackage.qs
    public final void onChanged() {
        this.a.clearCachedHeights();
        this.a.updatePaginationButtons();
    }

    @Override // defpackage.qs
    public final void onItemRangeChanged(int i, int i2) {
        this.a.clearCachedHeights();
        this.a.updatePaginationButtons();
    }

    @Override // defpackage.qs
    public final void onItemRangeInserted(int i, int i2) {
        this.a.clearCachedHeights();
        this.a.updatePaginationButtons();
    }

    @Override // defpackage.qs
    public final void onItemRangeMoved(int i, int i2, int i3) {
        this.a.clearCachedHeights();
        this.a.updatePaginationButtons();
    }

    @Override // defpackage.qs
    public final void onItemRangeRemoved(int i, int i2) {
        this.a.clearCachedHeights();
        this.a.updatePaginationButtons();
    }

    @Override // defpackage.qs
    public final void onItemRangeChanged(int i, int i2, Object obj) {
        this.a.clearCachedHeights();
        this.a.updatePaginationButtons();
    }
}
