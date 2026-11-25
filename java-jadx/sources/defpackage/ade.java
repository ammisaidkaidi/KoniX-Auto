package defpackage;

import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ade implements acq {
    final /* synthetic */ PreferenceGroup a;
    final /* synthetic */ adg b;

    public ade(adg adgVar, PreferenceGroup preferenceGroup) {
        this.b = adgVar;
        this.a = preferenceGroup;
    }

    @Override // defpackage.acq
    public final void a() {
        this.a.d(Preference.DEFAULT_ORDER);
        this.b.b();
    }
}
