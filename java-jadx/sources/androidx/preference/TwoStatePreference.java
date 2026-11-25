package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import defpackage.ado;
import defpackage.adv;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    protected boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    public boolean getDisableDependentsState() {
        return this.mDisableDependentsState;
    }

    public CharSequence getSummaryOff() {
        return this.mSummaryOff;
    }

    public CharSequence getSummaryOn() {
        return this.mSummaryOn;
    }

    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // androidx.preference.Preference
    protected void onClick() {
        boolean z = !isChecked();
        if (callChangeListener(Boolean.valueOf(z))) {
            setChecked(z);
        }
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(adv.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        adv advVar = (adv) parcelable;
        super.onRestoreInstanceState(advVar.getSuperState());
        setChecked(advVar.a);
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        adv advVar = new adv(onSaveInstanceState);
        advVar.a = isChecked();
        return advVar;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = false;
        }
        setChecked(getPersistedBoolean(((Boolean) obj).booleanValue()));
    }

    public void setChecked(boolean z) {
        boolean z2 = this.mChecked;
        if (z2 == z && this.mCheckedSet) {
            return;
        }
        this.mChecked = z;
        this.mCheckedSet = true;
        persistBoolean(z);
        if (z2 != z) {
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setDisableDependentsState(boolean z) {
        this.mDisableDependentsState = z;
    }

    public void setSummaryOff(int i) {
        setSummaryOff(getContext().getString(i));
    }

    public void setSummaryOn(int i) {
        setSummaryOn(getContext().getString(i));
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        if (this.mDisableDependentsState) {
            if (this.mChecked) {
                return true;
            }
        } else if (!this.mChecked) {
            return true;
        }
        return super.shouldDisableDependents();
    }

    protected void syncSummaryView(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            int i = 0;
            if (this.mChecked && !TextUtils.isEmpty(this.mSummaryOn)) {
                textView.setText(this.mSummaryOn);
            } else if (this.mChecked || TextUtils.isEmpty(this.mSummaryOff)) {
                CharSequence summary = getSummary();
                if (TextUtils.isEmpty(summary)) {
                    i = 8;
                } else {
                    textView.setText(summary);
                }
            } else {
                textView.setText(this.mSummaryOff);
            }
            if (i != textView.getVisibility()) {
                textView.setVisibility(i);
            }
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setSummaryOff(CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (isChecked()) {
            return;
        }
        notifyChanged();
    }

    public void setSummaryOn(CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (isChecked()) {
            notifyChanged();
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    protected void syncSummaryView(ado adoVar) {
        syncSummaryView(adoVar.a(R.id.summary));
    }
}
