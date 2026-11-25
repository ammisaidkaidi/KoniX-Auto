package com.google.android.apps.auto.aareceiver.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.WaitingForConnectionActivity;
import com.google.android.embedded.projection.R;
import defpackage.bfw;
import defpackage.bgd;
import defpackage.caa;
import defpackage.csx;
import defpackage.csz;
import defpackage.czj;
import defpackage.dag;
import defpackage.djo;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public class WaitingForConnectionActivity extends bfw {
    private static final csz c = csz.g("com/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity");
    public bgd b;

    public WaitingForConnectionActivity() {
        caa.a.a();
    }

    public static void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) WaitingForConnectionActivity.class);
        intent.setAction("com.google.android.embedded.projection.ui.WaitingForConnectionActivity.FINISH_ACTIVITY");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static void b(Context context, dag dagVar) {
        Bundle bundle = new Bundle(1);
        bundle.putBinder("com.google.android.embedded.projection.KEY_LOCAL_DATA", new bgd(dagVar));
        context.startActivity(new Intent(context, (Class<?>) WaitingForConnectionActivity.class).setFlags(536870912).putExtras(bundle));
    }

    private final void d(Intent intent) {
        if ("com.google.android.embedded.projection.ui.WaitingForConnectionActivity.FINISH_ACTIVITY".equals(intent.getAction())) {
            finish();
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null || !extras.containsKey("com.google.android.embedded.projection.KEY_LOCAL_DATA")) {
            ((csx) c.b().h("com/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity", "processIntent", 136, "WaitingForConnectionActivity.java")).n("Activity started w/o extras provided, ignore.");
            finish();
            return;
        }
        final bgd bgdVar = (bgd) extras.getBinder("com.google.android.embedded.projection.KEY_LOCAL_DATA");
        bgdVar.getClass();
        bgd bgdVar2 = this.b;
        if (bgdVar == bgdVar2) {
            return;
        }
        if (bgdVar2 != null) {
            bgdVar2.a();
        }
        this.b = bgdVar;
        bgdVar.b = new WeakReference(this);
        bgdVar.a.aW(new Runnable() { // from class: bgc
            @Override // java.lang.Runnable
            public final void run() {
                WeakReference weakReference = bgd.this.b;
                Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
                if (activity != null) {
                    activity.finish();
                }
            }
        }, czj.a);
    }

    @Override // defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d(getIntent());
        if (isFinishing()) {
            return;
        }
        setContentView(R.layout.waiting_for_connection_activity);
        if (djo.c()) {
            View findViewById = findViewById(R.id.btn_cancel_wireless_connection);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: bgb
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WaitingForConnectionActivity waitingForConnectionActivity = WaitingForConnectionActivity.this;
                    bgd bgdVar = waitingForConnectionActivity.b;
                    if (bgdVar != null && !bgdVar.a.isDone()) {
                        waitingForConnectionActivity.b.a.cancel(true);
                    }
                    waitingForConnectionActivity.finish();
                }
            });
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        bgd bgdVar = this.b;
        if (bgdVar != null) {
            bgdVar.a();
            this.b = null;
        }
    }

    @Override // android.app.Activity
    protected final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        d(intent);
    }
}
