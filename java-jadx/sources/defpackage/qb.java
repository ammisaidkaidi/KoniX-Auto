package defpackage;

import android.database.DataSetObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qb extends DataSetObserver {
    final /* synthetic */ qf a;

    public qb(qf qfVar) {
        this.a = qfVar;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        if (this.a.u()) {
            this.a.s();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.a.k();
    }
}
