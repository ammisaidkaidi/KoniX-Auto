package com.android.car.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.preference.TwoStatePreference;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceViewHolder;
import defpackage.ListItemMarkerInterface;
import defpackage.CarUiResourceUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiRadioButtonPreference extends TwoStatePreference implements ListItemMarkerInterface {
    public CarUiRadioButtonPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, CarUiResourceUtils.b(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle), 0);
        setLayoutResource(R.layout.car_ui_preference);
        setWidgetLayoutResource(R.layout.car_ui_radio_button_preference_widget);
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder adoVar) {
        super.onBindViewHolder(adoVar);
        ((RadioButton) CarUiResourceUtils.f(adoVar.itemView, R.id.radio_button)).setChecked(isChecked());
        CarUiResourceUtils.l(adoVar.itemView, false);
    }

    @Override // androidx.preference.Preference
    public final void performClick() {
        if (!isEnabled()) {
            isSelectable();
        }
        super.performClick();
    }
}
