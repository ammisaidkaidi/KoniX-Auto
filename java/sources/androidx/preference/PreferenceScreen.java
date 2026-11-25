package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceNavigateToScreenListener;
import defpackage.ProtoTextFormatPrinterUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public boolean d;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ev.k(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
        this.d = true;
    }

    @Override // androidx.preference.PreferenceGroup
    public final boolean e() {
        return false;
    }

    @Override // androidx.preference.Preference
    protected final void onClick() {
        PreferenceNavigateToScreenListener adjVar;
        if (getIntent() != null || getFragment() != null || a() == 0 || (adjVar = getPreferenceManager().e) == null) {
            return;
        }
        adjVar.an();
    }
}
