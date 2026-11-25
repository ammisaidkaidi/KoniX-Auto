package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qa implements AdapterView.OnItemSelectedListener {
    final /* synthetic */ qf a;

    public qa(qf qfVar) {
        this.a = qfVar;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        pf pfVar;
        if (i == -1 || (pfVar = this.a.e) == null) {
            return;
        }
        pfVar.a = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
