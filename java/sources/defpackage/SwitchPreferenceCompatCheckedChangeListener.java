package defpackage;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreferenceCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SwitchPreferenceCompatCheckedChangeListener implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ SwitchPreferenceCompat a;

    public SwitchPreferenceCompatCheckedChangeListener(SwitchPreferenceCompat switchPreferenceCompat) {
        this.a = switchPreferenceCompat;
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
