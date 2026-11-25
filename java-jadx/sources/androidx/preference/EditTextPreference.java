package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.embedded.projection.R;
import defpackage.acf;
import defpackage.ach;
import defpackage.ack;
import defpackage.adp;
import defpackage.ev;

/* compiled from: PG */
/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    private acf mOnBindEditTextListener;
    private String mText;

    public EditTextPreference(Context context) {
        this(context, null);
    }

    acf getOnBindEditTextListener() {
        return this.mOnBindEditTextListener;
    }

    public String getText() {
        return this.mText;
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(ach.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ach achVar = (ach) parcelable;
        super.onRestoreInstanceState(achVar.getSuperState());
        setText(achVar.a);
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        ach achVar = new ach(onSaveInstanceState);
        achVar.a = getText();
        return achVar;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        setText(getPersistedString((String) obj));
    }

    public void setOnBindEditTextListener(acf acfVar) {
        this.mOnBindEditTextListener = acfVar;
    }

    public void setText(String str) {
        boolean shouldDisableDependents = shouldDisableDependents();
        this.mText = str;
        persistString(str);
        boolean shouldDisableDependents2 = shouldDisableDependents();
        if (shouldDisableDependents2 != shouldDisableDependents) {
            notifyDependencyChange(shouldDisableDependents2);
        }
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.mText) || super.shouldDisableDependents();
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, ev.k(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle));
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.d, i, i2);
        if (ev.q(obtainStyledAttributes, 0, 0, false)) {
            if (ack.b == null) {
                ack.b = new ack(1);
            }
            setSummaryProvider(ack.b);
        }
        obtainStyledAttributes.recycle();
    }
}
