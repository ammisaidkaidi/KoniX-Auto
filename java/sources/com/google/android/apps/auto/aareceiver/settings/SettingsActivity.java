package com.google.android.apps.auto.aareceiver.settings;

import android.os.Bundle;
import com.google.android.embedded.projection.R;
import com.google.android.apps.auto.aareceiver.settings.EmbeddedPreferenceFragment;
import defpackage.EmbeddedSettingsActivity;
import defpackage.FragmentTransaction;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SettingsActivity extends EmbeddedSettingsActivity {
    @Override // defpackage.AppCompatActivityBase_jf
    public final boolean h() {
        onBackPressed();
        finish();
        return true;
    }

    @Override // defpackage.FragmentHostCallbacksImpl, defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.settings_activity);
        FragmentTransaction h = aI().h();
        h.j(R.id.embedded_settings, new EmbeddedPreferenceFragment());
        h.b();
    }
}
