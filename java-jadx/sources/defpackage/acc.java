package defpackage;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class acc implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ CheckBoxPreference a;

    public acc(CheckBoxPreference checkBoxPreference) {
        this.a = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.a.callChangeListener(Boolean.valueOf(z))) {
            this.a.setChecked(z);
        } else {
            compoundButton.setChecked(!z);
        }
    }
}
