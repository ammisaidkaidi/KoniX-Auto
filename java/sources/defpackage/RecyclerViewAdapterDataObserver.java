package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewAdapterDataObserver extends AdapterDataObserver {
    final /* synthetic */ RecyclerView a;

    public RecyclerViewAdapterDataObserver(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    final void c() {
        int i = RecyclerView.O;
        RecyclerView recyclerView = this.a;
        recyclerView.u = true;
        recyclerView.requestLayout();
    }

    @Override // defpackage.AdapterDataObserver
    public final void onChanged() {
        this.a.r(null);
        RecyclerView recyclerView = this.a;
        recyclerView.H.f = true;
        recyclerView.Q(true);
        if (this.a.e.l()) {
            return;
        }
        this.a.requestLayout();
    }

    @Override // defpackage.AdapterDataObserver
    public final void onItemRangeChanged(int i, int i2, Object obj) {
        this.a.r(null);
        RecyclerViewAdapterHelper nfVar = this.a.e;
        if (i2 <= 0) {
            return;
        }
        nfVar.a.add(nfVar.c(4, i, i2, obj));
        nfVar.d |= 4;
        if (nfVar.a.size() == 1) {
            c();
        }
    }

    @Override // defpackage.AdapterDataObserver
    public final void onItemRangeInserted(int i, int i2) {
        this.a.r(null);
        RecyclerViewAdapterHelper nfVar = this.a.e;
        if (i2 <= 0) {
            return;
        }
        nfVar.a.add(nfVar.c(1, i, i2, null));
        nfVar.d |= 1;
        if (nfVar.a.size() == 1) {
            c();
        }
    }

    @Override // defpackage.AdapterDataObserver
    public final void onItemRangeMoved(int i, int i2, int i3) {
        this.a.r(null);
        RecyclerViewAdapterHelper nfVar = this.a.e;
        if (NavInstructionTypeEnum == i2) {
            return;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        nfVar.a.add(nfVar.c(8, i, i2, null));
        nfVar.d |= 8;
        if (nfVar.a.size() == 1) {
            c();
        }
    }

    @Override // defpackage.AdapterDataObserver
    public final void onItemRangeRemoved(int i, int i2) {
        this.a.r(null);
        RecyclerViewAdapterHelper nfVar = this.a.e;
        if (i2 <= 0) {
            return;
        }
        nfVar.a.add(nfVar.c(2, i, i2, null));
        nfVar.d |= 2;
        if (nfVar.a.size() == 1) {
            c();
        }
    }

    @Override // defpackage.AdapterDataObserver
    public final void onStateRestorationPolicyChanged() {
        RecyclerViewAdapter qqVar;
        RecyclerView recyclerView = this.a;
        if (recyclerView.d == null || (qqVar = recyclerView.k) == null || !qqVar.canRestoreState()) {
            return;
        }
        this.a.requestLayout();
    }
}
