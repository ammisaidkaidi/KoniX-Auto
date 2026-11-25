package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.CarUiStyleableAttrs;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class CarUiTwoActionBasePreference extends CarUiPreference {
    protected boolean mSecondaryActionEnabled;
    protected boolean mSecondaryActionVisible;

    public CarUiTwoActionBasePreference(Context context) {
        super(context);
        this.mSecondaryActionEnabled = true;
        this.mSecondaryActionVisible = true;
        init(null);
    }

    private static void disallowResourceIds(TypedArray typedArray, int... iArr) {
        for (int i : iArr) {
            if (typedArray.hasValue(i)) {
                String valueOf = String.valueOf(typedArray.getResources().getResourceName(i));
                throw new AssertionError(valueOf.length() != 0 ? "Setting this attribute is not allowed: ".concat(valueOf) : new String("Setting this attribute is not allowed: "));
            }
        }
    }

    protected void init(AttributeSet attributeSet) {
        setShowChevron(false);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.d);
        try {
            disallowResourceIds(obtainStyledAttributes, 2, 0, 3, 1);
            obtainStyledAttributes.recycle();
            obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.f);
            try {
                this.mSecondaryActionVisible = obtainStyledAttributes.getBoolean(1, true);
                this.mSecondaryActionEnabled = obtainStyledAttributes.getBoolean(0, true);
            } finally {
            }
        } finally {
        }
    }

    public boolean isSecondaryActionEnabled() {
        return this.mSecondaryActionEnabled && isEnabled();
    }

    public boolean isSecondaryActionVisible() {
        return this.mSecondaryActionVisible;
    }

    public void performSecondaryActionClick() {
        if (!isSecondaryActionEnabled()) {
            if (!isClickableWhileDisabled() || getDisabledClickListener() == null) {
                return;
            }
            getDisabledClickListener().accept(this);
            return;
        }
        if (!isUxRestricted()) {
            performSecondaryActionClickInternal();
            return;
        }
        Consumer onClickWhileRestrictedListener = getOnClickWhileRestrictedListener();
        if (onClickWhileRestrictedListener != null) {
            onClickWhileRestrictedListener.accept(this);
        }
    }

    protected abstract void performSecondaryActionClickInternal();

    @Override // androidx.preference.Preference
    public void setLayoutResource(int i) {
        throw new UnsupportedOperationException();
    }

    protected void setLayoutResourceInternal(int i) {
        super.setLayoutResource(i);
    }

    public void setSecondaryActionEnabled(boolean z) {
        this.mSecondaryActionEnabled = z;
        notifyChanged();
    }

    public void setSecondaryActionVisible(boolean z) {
        this.mSecondaryActionVisible = z;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public void setWidgetLayoutResource(int i) {
        throw new UnsupportedOperationException();
    }

    public CarUiTwoActionBasePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSecondaryActionEnabled = true;
        this.mSecondaryActionVisible = true;
        init(attributeSet);
    }

    public CarUiTwoActionBasePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSecondaryActionEnabled = true;
        this.mSecondaryActionVisible = true;
        init(attributeSet);
    }

    public CarUiTwoActionBasePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mSecondaryActionEnabled = true;
        this.mSecondaryActionVisible = true;
        init(attributeSet);
    }
}
