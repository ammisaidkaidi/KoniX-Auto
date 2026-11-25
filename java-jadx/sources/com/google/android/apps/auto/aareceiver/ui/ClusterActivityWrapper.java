package com.google.android.apps.auto.aareceiver.ui;

import android.content.Intent;
import android.os.Bundle;
import defpackage.bah;
import defpackage.bbl;
import defpackage.bfe;
import defpackage.bfo;
import defpackage.csx;
import defpackage.csz;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ClusterActivityWrapper extends bfo {
    private static final csz d = csz.g("com/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper");
    public bfe a;
    public bah b;

    @Override // defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.a.a()) {
            bbl bblVar = this.b.h;
            if (bblVar == null) {
                ((csx) d.c().h("com/google/android/apps/auto/aareceiver/ui/ClusterActivityWrapper", "shouldStartClusterActivity", 47, "ClusterActivityWrapper.java")).n("There is no active projection session.");
            } else if (bblVar.s) {
                startActivity(new Intent(this, (Class<?>) ClusterActivity.class).putExtra("android.car.cluster.ClusterActivityState", getIntent().getBundleExtra("android.car.cluster.ClusterActivityState")));
            }
        }
        finish();
    }
}
