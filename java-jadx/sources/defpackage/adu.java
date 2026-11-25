package defpackage;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreferenceCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class adu implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ SwitchPreferenceCompat a;

    public adu(SwitchPreferenceCompat switchPreferenceCompat) {
        this.a = switchPreferenceCompat;
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
