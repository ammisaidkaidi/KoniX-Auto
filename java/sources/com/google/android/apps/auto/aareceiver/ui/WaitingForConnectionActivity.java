package com.google.android.apps.auto.aareceiver.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.WaitingForConnectionActivity;
import com.google.android.embedded.projection.R;
import defpackage.WaitingForConnectionActivityHost;
import defpackage.HotwordServiceBinder;
import defpackage.StartupTimingRecorder;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.DirectExecutorEnum_czj;
import defpackage.ListenableFuture;
import defpackage.AaReceiverFlagsDjqFacade;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public class WaitingForConnectionActivity extends WaitingForConnectionActivityHost {
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity");
    public HotwordServiceBinder b;

    public WaitingForConnectionActivity() {
        StartupTimingRecorder.a.a();
    }

    public static void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) WaitingForConnectionActivity.class);
        intent.setAction("com.google.android.embedded.projection.ui.WaitingForConnectionActivity.FINISH_ACTIVITY");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static void b(Context context, ListenableFuture dagVar) {
        Bundle bundle = new Bundle(1);
        bundle.putBinder("com.google.android.embedded.projection.KEY_LOCAL_DATA", new HotwordServiceBinder(dagVar));
        context.startActivity(new Intent(context, (Class<?>) WaitingForConnectionActivity.class).setFlags(536870912).putExtras(bundle));
    }

    private final void d(Intent intent) {
        if ("com.google.android.embedded.projection.ui.WaitingForConnectionActivity.FINISH_ACTIVITY".equals(intent.getAction())) {
            finish();
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null || !extras.containsKey("com.google.android.embedded.projection.KEY_LOCAL_DATA")) {
            ((ParameterizedLoggerApi) c.b().h("com/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity", "processIntent", 136, "WaitingForConnectionActivity.java")).n("Activity started w/o extras provided, ignore.");
            finish();
            return;
        }
        final HotwordServiceBinder bgdVar = (HotwordServiceBinder) extras.getBinder("com.google.android.embedded.projection.KEY_LOCAL_DATA");
        bgdVar.getClass();
        HotwordServiceBinder bgdVar2 = this.b;
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
                WeakReference weakReference = HotwordServiceBinder.this.b;
                Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
                if (activity != null) {
                    activity.finish();
                }
            }
        }, czj.a);
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d(getIntent());
        if (isFinishing()) {
            return;
        }
        setContentView(R.layout.waiting_for_connection_activity);
        if (AaReceiverFlagsDjqFacade.c()) {
            View findViewById = findViewById(R.id.btn_cancel_wireless_connection);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: bgb
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WaitingForConnectionActivity waitingForConnectionActivity = WaitingForConnectionActivity.this;
                    HotwordServiceBinder bgdVar = waitingForConnectionActivity.b;
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
        HotwordServiceBinder bgdVar = this.b;
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
