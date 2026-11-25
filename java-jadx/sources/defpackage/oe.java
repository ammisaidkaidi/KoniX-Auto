package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class oe implements AdapterView.OnItemClickListener {
    final /* synthetic */ oh a;

    public oe(oh ohVar) {
        this.a = ohVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.a.d.setSelection(i);
        if (this.a.d.getOnItemClickListener() != null) {
            oh ohVar = this.a;
            ohVar.d.performItemClick(view, i, ohVar.b.getItemId(i));
        }
        this.a.k();
    }
}
