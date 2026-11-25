package defpackage;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SwitchPreferenceCheckedChangeListener implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ SwitchPreference a;

    public SwitchPreferenceCheckedChangeListener(SwitchPreference switchPreference) {
        this.a = switchPreference;
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
