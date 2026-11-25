package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListPopupItemClickListener implements AdapterView.OnItemClickListener {
    final /* synthetic */ SpinnerListPopupWindow a;

    public ListPopupItemClickListener(SpinnerListPopupWindow ohVar) {
        this.a = ohVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.a.d.setSelection(NavInstructionTypeEnum);
        if (this.a.d.getOnItemClickListener() != null) {
            SpinnerListPopupWindow ohVar = this.a;
            ohVar.d.performItemClick(view, i, ohVar.b.getItemId(NavInstructionTypeEnum));
        }
        this.a.k();
    }
}
