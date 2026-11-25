package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class acv implements Runnable {
    final /* synthetic */ ada a;

    public acv(ada adaVar) {
        this.a = adaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.a.b;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
