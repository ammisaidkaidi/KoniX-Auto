package com.google.android.apps.auto.aareceiver.settings;

import android.os.Bundle;
import com.google.android.embedded.projection.R;
import defpackage.bcb;
import defpackage.bce;
import defpackage.da;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SettingsActivity extends bce {
    @Override // defpackage.jf
    public final boolean h() {
        onBackPressed();
        finish();
        return true;
    }

    @Override // defpackage.bv, defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.settings_activity);
        da h = aI().h();
        h.j(R.id.embedded_settings, new bcb());
        h.b();
    }
}
