package defpackage;

import android.database.DataSetObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListPopupWindowDataSetObserver extends DataSetObserver {
    final /* synthetic */ ListPopupWindow a;

    public ListPopupWindowDataSetObserver(ListPopupWindow qfVar) {
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
