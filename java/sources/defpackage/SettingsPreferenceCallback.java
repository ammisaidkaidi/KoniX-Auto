package defpackage;

import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SettingsPreferenceCallback implements PreferenceExpandClickListener {
    int a = 0;
    final /* synthetic */ EmbeddedPreferenceFragment b;

    public SettingsPreferenceCallback(EmbeddedPreferenceFragment bcbVar) {
        this.b = bcbVar;
    }

    @Override // defpackage.PreferenceExpandClickListener
    public final void a() {
        if (this.b.as()) {
            EmbeddedPreferenceFragment bcbVar = this.b;
            bcbVar.ad.setText(bcbVar.F(R.string.dev_settings_already_enabled));
            bcbVar.ad.show();
            return;
        }
        int i = this.a + 1;
        this.a = i;
        if (NavInstructionTypeEnum != 10) {
            if (NavInstructionTypeEnum >= 7) {
                this.b.ar(NavInstructionTypeEnum);
            }
        } else {
            EmbeddedPreferenceFragment bcbVar2 = this.b;
            bcbVar2.f.edit().putBoolean(bcbVar2.F(R.string.enable_developer_mode_key), true).apply();
            this.b.ar(this.a);
            this.a = 0;
        }
    }
}
