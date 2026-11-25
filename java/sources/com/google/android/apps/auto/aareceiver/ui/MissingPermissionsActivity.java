package com.google.android.apps.auto.aareceiver.ui;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.MissingPermissionsActivity;
import com.google.android.embedded.projection.R;
import defpackage.ClusterActivityHost;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MissingPermissionsActivity extends ClusterActivityHost {
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity");
    public PackageManager b;

    private final Intent b() {
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", getPackageName(), null));
    }

    private static Intent d() {
        return new Intent("android.settings.SETTINGS");
    }

    private final void f() {
        try {
            startActivity(d());
            finish();
        } catch (ActivityNotFoundException e) {
            ((ParameterizedLoggerApi) c.b().h("com/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity", "launchSystemSettings", 55, "MissingPermissionsActivity.java")).n("Settings Activity not found");
            finish();
        }
    }

    private final boolean g(Intent intent) {
        return intent.resolveActivity(this.b) != null;
    }

    public final void a() {
        try {
            startActivity(b());
            finish();
        } catch (ActivityNotFoundException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) c.b().g(e)).h("com/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity", "launchAppPermissionSettings", 44, "MissingPermissionsActivity.java")).n("Permissions Settings Activity not found. Falling back to Settings Activity.");
            f();
        }
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.missing_permissions);
        final int i = 1;
        findViewById(R.id.btn_exit).setOnClickListener(new View.OnClickListener(this) { // from class: bfx
            public final /* synthetic */ MissingPermissionsActivity a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.a.a();
                        break;
                    default:
                        this.a.finish();
                        break;
                }
            }
        });
        final int i2 = 0;
        findViewById(R.id.btn_settings).setOnClickListener(new View.OnClickListener(this) { // from class: bfx
            public final /* synthetic */ MissingPermissionsActivity a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.a.a();
                        break;
                    default:
                        this.a.finish();
                        break;
                }
            }
        });
        if (g(b()) || g(d())) {
            return;
        }
        findViewById(R.id.btn_settings).setVisibility(8);
    }
}
