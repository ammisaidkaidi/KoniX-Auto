package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.preference.DropDownPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ace implements AdapterView.OnItemSelectedListener {
    final /* synthetic */ DropDownPreference a;

    public ace(DropDownPreference dropDownPreference) {
        this.a = dropDownPreference;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (i >= 0) {
            String charSequence = this.a.getEntryValues()[i].toString();
            if (charSequence.equals(this.a.getValue()) || !this.a.callChangeListener(charSequence)) {
                return;
            }
            this.a.setValue(charSequence);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
