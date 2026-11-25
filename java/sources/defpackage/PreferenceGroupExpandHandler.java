package defpackage;

import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PreferenceGroupExpandHandler implements PreferenceExpandClickListener {
    final /* synthetic */ PreferenceGroup a;
    final /* synthetic */ PreferenceGroupAdapter b;

    public PreferenceGroupExpandHandler(PreferenceGroupAdapter adgVar, PreferenceGroup preferenceGroup) {
        this.b = adgVar;
        this.a = preferenceGroup;
    }

    @Override // defpackage.PreferenceExpandClickListener
    public final void a() {
        this.a.d(Preference.DEFAULT_ORDER);
        this.b.b();
    }
}
