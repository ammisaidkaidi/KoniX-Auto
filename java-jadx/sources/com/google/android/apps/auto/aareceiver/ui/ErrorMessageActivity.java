package com.google.android.apps.auto.aareceiver.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.auto.aareceiver.ui.ErrorMessageActivity;
import com.google.android.embedded.projection.R;
import defpackage.bfk;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ErrorMessageActivity extends Activity {
    private final BroadcastReceiver a = new bfk(this);

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("extra_message");
        setContentView(R.layout.error_screen_layout);
        ((TextView) findViewById(R.id.error_screen_layout).findViewById(R.id.tv_error_message)).setText(stringExtra);
        findViewById(R.id.error_btn_cancel).setOnClickListener(new View.OnClickListener() { // from class: bfj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorMessageActivity.this.finish();
            }
        });
        registerReceiver(this.a, new IntentFilter("com.google.android.embedded.projection.action.FINISH_ERROR_ACTIVITY"));
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.a);
    }
}
