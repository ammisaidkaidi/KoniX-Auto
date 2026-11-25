package com.google.android.apps.auto.aareceiver.ui;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.ClusterDisplayAvailability;
import defpackage.SettingsActivityHost;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ClusterActivityWrapper extends SettingsActivityHost {
    private static final FloggerLoggerFactory d = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper");
    public ClusterDisplayAvailability a;
    public DeviceTracker b;

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.a.a()) {
            ProjectionSession bblVar = this.b.h;
            if (bblVar == null) {
                ((ParameterizedLoggerApi) d.c().h("com/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper", "shouldStartClusterActivity", 47, "ClusterActivityWrapper.java")).n("There is no active projection session.");
            } else if (bblVar.s) {
                startActivity(new Intent(this, (Class<?>) ClusterActivity.class).putExtra("android.car.cluster.ClusterActivityState", getIntent().getBundleExtra("android.car.cluster.ClusterActivityState")));
            }
        }
        finish();
    }
}
