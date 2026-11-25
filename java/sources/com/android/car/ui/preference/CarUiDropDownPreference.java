package com.android.car.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.DropDownPreference;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceViewHolder;
import defpackage.ListItemMarkerInterface;
import defpackage.CarUiResourceUtils;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiDropDownPreference extends DropDownPreference implements ListItemMarkerInterface {
    private Consumer mRestrictedClickListener;
    private boolean mUxRestricted;

    public CarUiDropDownPreference(Context context) {
        super(context);
        this.mUxRestricted = false;
    }

    public Consumer getOnClickWhileRestrictedListener() {
        return this.mRestrictedClickListener;
    }

    public boolean isUxRestricted() {
        return this.mUxRestricted;
    }

    @Override // androidx.preference.Preference
    public void onAttached() {
        super.onAttached();
        if (getContext().getResources().getBoolean(R.bool.car_ui_preference_show_chevron)) {
            setWidgetLayoutResource(R.layout.car_ui_preference_chevron);
        }
    }

    @Override // androidx.preference.DropDownPreference, androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder adoVar) {
        super.onBindViewHolder(adoVar);
        CarUiResourceUtils.l(adoVar.itemView, isUxRestricted());
    }

    @Override // androidx.preference.DropDownPreference, androidx.preference.DialogPreference, androidx.preference.Preference
    protected void onClick() {
        getPreferenceManager().g(this);
    }

    @Override // androidx.preference.Preference
    public void performClick() {
        if ((!isEnabled() && !isSelectable()) || !isUxRestricted()) {
            super.performClick();
            return;
        }
        Consumer consumer = this.mRestrictedClickListener;
        if (consumer != null) {
            consumer.accept(this);
        }
    }

    public void setOnClickWhileRestrictedListener(Consumer consumer) {
        this.mRestrictedClickListener = consumer;
    }

    public void setUxRestricted(boolean z) {
        if (z != this.mUxRestricted) {
            this.mUxRestricted = z;
            notifyChanged();
        }
    }

    public CarUiDropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUxRestricted = false;
    }

    public CarUiDropDownPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mUxRestricted = false;
    }

    public CarUiDropDownPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mUxRestricted = false;
    }
}
