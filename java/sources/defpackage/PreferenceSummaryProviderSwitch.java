package defpackage;

import android.text.TextUtils;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreferenceSummaryProviderSwitch implements PreferenceSummaryProvider {
    public static PreferenceSummaryProviderSwitch a;
    public static PreferenceSummaryProviderSwitch b;
    private final /* synthetic */ int c;

    public PreferenceSummaryProviderSwitch(int i) {
        this.c = i;
    }

    @Override // defpackage.PreferenceSummaryProvider
    public final /* synthetic */ CharSequence a(Preference preference) {
        switch (this.c) {
            case 0:
                ListPreference listPreference = (ListPreference) preference;
                return TextUtils.isEmpty(listPreference.getEntry()) ? listPreference.getContext().getString(R.string.not_set) : listPreference.getEntry();
            default:
                EditTextPreference editTextPreference = (EditTextPreference) preference;
                return TextUtils.isEmpty(editTextPreference.getText()) ? editTextPreference.getContext().getString(R.string.not_set) : editTextPreference.getText();
        }
    }
}
