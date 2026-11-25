package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.ev;

/* compiled from: PG */
/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ev.k(context, R.attr.preferenceCategoryStyle, android.R.attr.preferenceCategoryStyle), null);
    }

    @Override // androidx.preference.Preference
    public final boolean isEnabled() {
        return false;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        adoVar.itemView.setAccessibilityHeading(true);
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return !super.isEnabled();
    }
}
