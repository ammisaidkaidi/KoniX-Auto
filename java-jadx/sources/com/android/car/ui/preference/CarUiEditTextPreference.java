package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.preference.EditTextPreference;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.amu;
import defpackage.aoa;
import defpackage.aro;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiEditTextPreference extends EditTextPreference implements aoa {
    private Consumer mRestrictedClickListener;
    private boolean mShowChevron;
    private boolean mUxRestricted;

    public CarUiEditTextPreference(Context context) {
        this(context, null);
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.a, i, i2);
        this.mShowChevron = obtainStyledAttributes.getBoolean(2, true);
        this.mUxRestricted = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
    }

    public Consumer getOnClickWhileRestrictedListener() {
        return this.mRestrictedClickListener;
    }

    public View getWidgetActionContainer(ado adoVar) {
        return aro.f(adoVar.itemView, R.id.action_widget_container);
    }

    public boolean isUxRestricted() {
        return this.mUxRestricted;
    }

    @Override // androidx.preference.Preference
    public void onAttached() {
        super.onAttached();
        if (getContext().getResources().getBoolean(R.bool.car_ui_preference_show_chevron) && this.mShowChevron) {
            setWidgetLayoutResource(R.layout.car_ui_preference_chevron);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        aro.l(adoVar.itemView, isUxRestricted());
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

    public void setShowChevron(boolean z) {
        this.mShowChevron = z;
    }

    protected void setTwoActionLayout() {
        setLayoutResource(R.layout.car_ui_two_action_preference);
    }

    public void setUxRestricted(boolean z) {
        if (z != this.mUxRestricted) {
            this.mUxRestricted = z;
            notifyChanged();
        }
    }

    public CarUiEditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, aro.b(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle));
    }

    public CarUiEditTextPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public CarUiEditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet, i, i2);
    }
}
