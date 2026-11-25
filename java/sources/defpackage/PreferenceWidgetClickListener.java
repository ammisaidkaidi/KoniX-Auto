package defpackage;

import android.view.View;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreferenceWidgetClickListener implements View.OnClickListener {
    final /* synthetic */ Preference a;

    public PreferenceWidgetClickListener(Preference preference) {
        this.a = preference;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.performClick(view);
    }
}
