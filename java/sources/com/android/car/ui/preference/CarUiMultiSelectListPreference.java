package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.preference.MultiSelectListPreference;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceViewHolder;
import defpackage.CarUiStyleableAttrs;
import defpackage.ListItemMarkerInterface;
import defpackage.CarUiResourceUtils;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiMultiSelectListPreference extends MultiSelectListPreference implements ListItemMarkerInterface {
    private Consumer mRestrictedClickListener;
    private boolean mUxRestricted;

    public CarUiMultiSelectListPreference(Context context) {
        this(context, null);
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.a, i, i2);
        this.mUxRestricted = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
    }

    public Consumer getOnClickWhileRestrictedListener() {
        return this.mRestrictedClickListener;
    }

    @Override // androidx.preference.MultiSelectListPreference
    public boolean[] getSelectedItems() {
        return super.getSelectedItems();
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

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder adoVar) {
        super.onBindViewHolder(adoVar);
        CarUiResourceUtils.l(adoVar.itemView, isUxRestricted());
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

    public CarUiMultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.carUiPreferenceStyle);
    }

    public CarUiMultiSelectListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Preference_CarUi_Preference);
    }

    public CarUiMultiSelectListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mUxRestricted = false;
        init(attributeSet, i, i2);
    }
}
