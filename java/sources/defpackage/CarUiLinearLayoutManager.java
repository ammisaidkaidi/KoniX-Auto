package defpackage;

import android.support.v7.widget.LinearLayoutManager;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CarUiLinearLayoutManager extends LinearLayoutManager {
    final /* synthetic */ CarUiRecyclerViewImpl a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public CarUiLinearLayoutManager(CarUiRecyclerViewImpl aoxVar, int i, boolean z) {
        super(i, z);
        this.a = aoxVar;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.RecyclerViewLayoutManager
    public final void o(RecyclerViewState roVar) {
        super.o(roVar);
        Iterator it = new HashSet(this.a.c).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
