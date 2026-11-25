package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.preference.SwitchPreference;
import defpackage.PreferenceViewHolder;
import defpackage.CarUiStyleableAttrs;
import defpackage.ListItemMarkerInterface;
import defpackage.ListItemBase;
import defpackage.CarUiResourceUtils;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiSwitchPreference extends SwitchPreference implements ListItemMarkerInterface {
    private Consumer mDisabledClickListener;
    private boolean mIsClickableWhileDisabled;
    private Consumer mRestrictedClickListener;
    private boolean mUxRestricted;

    public CarUiSwitchPreference(Context context) {
        super(context);
        this.mUxRestricted = false;
        this.mIsClickableWhileDisabled = false;
        init(null);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.a);
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

    @Override // androidx.preference.SwitchPreference, androidx.preference.Preference
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
        throw new UnsupportedOperationException("Dynamically setting shouldDisableView isunsupported in CarUiPreferences");
    }

    public void setUxRestricted(boolean z) {
        if (this.mUxRestricted != z) {
            this.mUxRestricted = z;
            notifyChanged();
        }
    }

    public CarUiSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUxRestricted = false;
        this.mIsClickableWhileDisabled = false;
        init(attributeSet);
    }

    public CarUiSwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mUxRestricted = false;
        this.mIsClickableWhileDisabled = false;
        init(attributeSet);
    }

    public CarUiSwitchPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mUxRestricted = false;
        this.mIsClickableWhileDisabled = false;
        init(attributeSet);
    }
}
