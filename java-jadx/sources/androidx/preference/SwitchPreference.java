package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;
import defpackage.ado;
import defpackage.adp;
import defpackage.adt;
import defpackage.ev;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    private final adt mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    public SwitchPreference(Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void syncSwitchView(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.mSwitchOn);
            r4.setTextOff(this.mSwitchOff);
            r4.setOnCheckedChangeListener(this.mListener);
        }
    }

    private void syncViewIfAccessibilityEnabled(View view) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            syncSwitchView(view.findViewById(R.id.switch_widget));
            syncSummaryView(view.findViewById(R.id.summary));
        }
    }

    public CharSequence getSwitchTextOff() {
        return this.mSwitchOff;
    }

    public CharSequence getSwitchTextOn() {
        return this.mSwitchOn;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        syncSwitchView(adoVar.a(R.id.switch_widget));
        syncSummaryView(adoVar);
    }

    @Override // androidx.preference.Preference
    public void performClick(View view) {
        super.performClick(view);
        syncViewIfAccessibilityEnabled(view);
    }

    public void setSwitchTextOff(int i) {
        setSwitchTextOff(getContext().getString(i));
    }

    public void setSwitchTextOn(int i) {
        setSwitchTextOn(getContext().getString(i));
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, ev.k(context, com.google.android.embedded.projection.R.attr.switchPreferenceStyle, R.attr.switchPreferenceStyle));
    }

    public void setSwitchTextOff(CharSequence charSequence) {
        this.mSwitchOff = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOn(CharSequence charSequence) {
        this.mSwitchOn = charSequence;
        notifyChanged();
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mListener = new adt(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.l, i, i2);
        setSummaryOn(ev.p(obtainStyledAttributes, 7, 0));
        setSummaryOff(ev.p(obtainStyledAttributes, 6, 1));
        setSwitchTextOn(ev.p(obtainStyledAttributes, 9, 3));
        setSwitchTextOff(ev.p(obtainStyledAttributes, 8, 4));
        setDisableDependentsState(ev.q(obtainStyledAttributes, 5, 2, false));
        obtainStyledAttributes.recycle();
    }
}
