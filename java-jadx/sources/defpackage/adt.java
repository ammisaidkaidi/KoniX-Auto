package defpackage;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class adt implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ SwitchPreference a;

    public adt(SwitchPreference switchPreference) {
        this.a = switchPreference;
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
