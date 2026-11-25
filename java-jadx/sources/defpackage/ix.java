package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ix implements AdapterView.OnItemClickListener {
    final /* synthetic */ jb a;
    final /* synthetic */ iy b;

    public ix(iy iyVar, jb jbVar) {
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
