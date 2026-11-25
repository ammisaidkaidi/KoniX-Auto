package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import com.google.android.embedded.projection.R;
import defpackage.acc;
import defpackage.ado;
import defpackage.adp;
import defpackage.ev;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    private final acc a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, r0, 0);
        int k = ev.k(context, R.attr.checkBoxPreferenceStyle, android.R.attr.checkBoxPreferenceStyle);
        this.a = new acc(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.b, k, 0);
        setSummaryOn(ev.p(obtainStyledAttributes, 5, 0));
        setSummaryOff(ev.p(obtainStyledAttributes, 4, 1));
        setDisableDependentsState(ev.q(obtainStyledAttributes, 3, 2, false));
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.a);
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        a(adoVar.a(android.R.id.checkbox));
        syncSummaryView(adoVar);
    }

    @Override // androidx.preference.Preference
    public final void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            a(view.findViewById(android.R.id.checkbox));
            syncSummaryView(view.findViewById(android.R.id.summary));
        }
    }
}
