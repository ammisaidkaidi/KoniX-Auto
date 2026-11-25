package com.google.android.apps.auto.aareceiver.ui;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.SslCertificateIssueActivity;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SslCertificateIssueActivity extends Activity {
    public final void a() {
        try {
            startActivity(new Intent("android.settings.SETTINGS"));
            finish();
        } catch (ActivityNotFoundException e) {
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ssl_error_message);
        final int i = 1;
        findViewById(R.id.btn_exit).setOnClickListener(new View.OnClickListener(this) { // from class: bga
            public final /* synthetic */ SslCertificateIssueActivity a;

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
        findViewById(R.id.btn_settings).setOnClickListener(new View.OnClickListener(this) { // from class: bga
            public final /* synthetic */ SslCertificateIssueActivity a;

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
    }
}
