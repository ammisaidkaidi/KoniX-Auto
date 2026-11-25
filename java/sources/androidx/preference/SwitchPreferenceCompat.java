package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceViewHolder;
import defpackage.PreferenceStyleableAttrs;
import defpackage.SwitchPreferenceCompatCheckedChangeListener;
import defpackage.ProtoTextFormatPrinterUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    private final SwitchPreferenceCompatCheckedChangeListener a;
    private CharSequence b;
    private CharSequence c;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.switchPreferenceCompatStyle, 0);
        this.a = new SwitchPreferenceCompatCheckedChangeListener(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.m, R.attr.switchPreferenceCompatStyle, 0);
        setSummaryOn(ev.p(obtainStyledAttributes, 7, 0));
        setSummaryOff(ev.p(obtainStyledAttributes, 6, 1));
        this.b = ev.p(obtainStyledAttributes, 9, 3);
        notifyChanged();
        this.c = ev.p(obtainStyledAttributes, 8, 4);
        notifyChanged();
        setDisableDependentsState(ev.q(obtainStyledAttributes, 5, 2, false));
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.a = this.b;
            switchCompat.requestLayout();
            if (switchCompat.isChecked()) {
                switchCompat.b();
            }
            switchCompat.b = this.c;
            switchCompat.requestLayout();
            if (!switchCompat.isChecked()) {
                switchCompat.a();
            }
            switchCompat.setOnCheckedChangeListener(this.a);
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder adoVar) {
        super.onBindViewHolder(adoVar);
        a(adoVar.a(R.id.switchWidget));
        syncSummaryView(adoVar);
    }

    @Override // androidx.preference.Preference
    public final void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            a(view.findViewById(R.id.switchWidget));
            syncSummaryView(view.findViewById(android.R.id.summary));
        }
    }
}
