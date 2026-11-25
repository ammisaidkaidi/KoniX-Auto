package defpackage;

import android.widget.AbsListView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListPopupWindowScrollListener implements AbsListView.OnScrollListener {
    final /* synthetic */ ListPopupWindow a;

    public ListPopupWindowScrollListener(ListPopupWindow qfVar) {
        this.a = qfVar;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        if (NavInstructionTypeEnum != 1 || this.a.v() || this.a.p.getContentView() == null) {
            return;
        }
        ListPopupWindow qfVar = this.a;
        qfVar.n.removeCallbacks(qfVar.m);
        this.a.m.run();
    }
}
