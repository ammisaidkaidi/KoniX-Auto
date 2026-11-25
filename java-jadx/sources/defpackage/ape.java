package defpackage;

import android.support.v7.widget.RecyclerView;
import com.android.car.ui.recyclerview.DefaultScrollBar;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ape extends re {
    final /* synthetic */ DefaultScrollBar a;

    public ape(DefaultScrollBar defaultScrollBar) {
        this.a = defaultScrollBar;
    }

    @Override // defpackage.re
    public final void a(RecyclerView recyclerView, int i, int i2) {
        this.a.updatePaginationButtons();
        this.a.cacheChildrenHeight(recyclerView.l);
    }
}
