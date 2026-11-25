package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListPopupWindowItemSelectedListener implements AdapterView.OnItemSelectedListener {
    final /* synthetic */ ListPopupWindow a;

    public ListPopupWindowItemSelectedListener(ListPopupWindow qfVar) {
        this.a = qfVar;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        DropDownListView pfVar;
        if (NavInstructionTypeEnum == -1 || (pfVar = this.a.e) == null) {
            return;
        }
        pfVar.a = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
