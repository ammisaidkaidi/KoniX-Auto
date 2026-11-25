package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PopupItemClickListener implements AdapterView.OnItemClickListener {
    final /* synthetic */ AlertControllerConfig a;
    final /* synthetic */ AlertDialogBuilderParams b;

    public PopupItemClickListener(AlertDialogBuilderParams iyVar, AlertControllerConfig jbVar) {
        this.b = iyVar;
        this.a = jbVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.b.h.onClick(this.a.b, i);
        if (this.b.i) {
            return;
        }
        this.a.b.dismiss();
    }
}
