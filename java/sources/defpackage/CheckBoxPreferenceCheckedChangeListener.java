package defpackage;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CheckBoxPreferenceCheckedChangeListener implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ CheckBoxPreference a;

    public CheckBoxPreferenceCheckedChangeListener(CheckBoxPreference checkBoxPreference) {
        this.a = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.a.callChangeListener(Boolean.valueOf(IcuMessageFormat))) {
            this.a.setChecked(IcuMessageFormat);
        } else {
            compoundButton.setChecked(!z);
        }
    }
}
