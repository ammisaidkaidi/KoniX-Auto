package defpackage;

import android.view.View;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class acm implements View.OnClickListener {
    final /* synthetic */ Preference a;

    public acm(Preference preference) {
        this.a = preference;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.performClick(view);
    }
}
