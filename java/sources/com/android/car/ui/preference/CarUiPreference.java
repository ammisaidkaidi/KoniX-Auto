package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.preference.Preference;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceViewHolder;
import defpackage.CarUiStyleableAttrs;
import defpackage.ListItemMarkerInterface;
import defpackage.ListItemBase;
import defpackage.CarUiResourceUtils;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiPreference extends Preference implements ListItemMarkerInterface {
    private Consumer mDisabledClickListener;
    private boolean mIsClickableWhileDisabled;
    private Consumer mRestrictedClickListener;
    private boolean mShowChevron;
    private boolean mUxRestricted;

    public CarUiPreference(Context context) {
        this(context, null);
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.a, i, i2);
        this.mShowChevron = obtainStyledAttributes.getBoolean(2, true);
        this.mUxRestricted = obtainStyledAttributes.getBoolean(1, false);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        this.mIsClickableWhileDisabled = z;
        if (z) {
            super.setShouldDisableView(false);
        }
        obtainStyledAttributes.recycle();
    }

    public Consumer getDisabledClickListener() {
        return this.mDisabledClickListener;
    }

    public Consumer getOnClickWhileRestrictedListener() {
        return this.mRestrictedClickListener;
    }

    public boolean isClickableWhileDisabled() {
        return this.mIsClickableWhileDisabled;
    }

    public boolean isUxRestricted() {
        return this.mUxRestricted;
    }

    @Override // androidx.preference.Preference
    public void onAttached() {
        super.onAttached();
        if (getContext().getResources().getBoolean(R.bool.car_ui_preference_show_chevron) && this.mShowChevron) {
            if (getOnPreferenceClickListener() == null && getIntent() == null && getFragment() == null) {
                return;
            }
            setWidgetLayoutResource(R.layout.car_ui_preference_chevron);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder adoVar) {
        super.onBindViewHolder(adoVar);
        CarUiResourceUtils.k(adoVar.itemView, isEnabled(), isUxRestricted());
    }

    @Override // androidx.preference.Preference
    public void performClick() {
        if (!isEnabled() && this.mIsClickableWhileDisabled) {
            Consumer consumer = this.mDisabledClickListener;
            if (consumer != null) {
                consumer.accept(this);
                return;
            }
            return;
        }
        if ((!isEnabled() && !isSelectable()) || !isUxRestricted()) {
            super.performClick();
            return;
        }
        Consumer consumer2 = this.mRestrictedClickListener;
        if (consumer2 != null) {
            consumer2.accept(this);
        }
    }

    public void performClickUnrestricted(View view) {
        performClick();
    }

    public void setClickableWhileDisabled(boolean z) {
        if (this.mIsClickableWhileDisabled != z) {
            super.setShouldDisableView(!z);
            this.mIsClickableWhileDisabled = z;
            notifyChanged();
        }
    }

    public void setDisabledClickListener(Consumer consumer) {
        this.mDisabledClickListener = consumer;
    }

    public /* synthetic */ void setMessageToShowWhenDisabledPreferenceClicked(String str) {
        ListItemBase.d();
    }

    public void setOnClickWhileRestrictedListener(Consumer consumer) {
        this.mRestrictedClickListener = consumer;
    }

    @Override // androidx.preference.Preference
    public void setShouldDisableView(boolean z) {
        throw new UnsupportedOperationException("android:shouldDisableView isunsupported on CarUiPreferences");
    }

    public void setShowChevron(boolean z) {
        this.mShowChevron = z;
    }

    public void setUxRestricted(boolean z) {
        this.mUxRestricted = z;
        notifyChanged();
    }

    public CarUiPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.carUiPreferenceStyle);
    }

    public CarUiPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Preference_CarUi_Preference);
    }

    public CarUiPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mUxRestricted = false;
        this.mIsClickableWhileDisabled = false;
        init(attributeSet, i, i2);
    }
}
