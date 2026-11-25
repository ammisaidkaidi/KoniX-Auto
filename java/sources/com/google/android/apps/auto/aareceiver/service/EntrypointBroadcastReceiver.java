package com.google.android.apps.auto.aareceiver.service;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Process;
import android.os.UserManager;
import defpackage.WorkLogger;
import defpackage.WorkRequestBuilder;
import defpackage.WorkManagerImpl;
import defpackage.WorkSpec;
import com.google.android.apps.auto.aareceiver.phenotype.PhenotypeManager;
import defpackage.PersistentServiceBtReceiver;
import com.google.android.apps.auto.aareceiver.service.PersistentServiceController;
import com.google.android.apps.auto.aareceiver.wireless.utils.WifiUtils;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import j$.time.Duration;

/* compiled from: PG */
/* loaded from: classes.dex */
public class EntrypointBroadcastReceiver extends PersistentServiceBtReceiver {
    private static final FloggerLoggerFactory f = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver");
    public UserManager a;
    public PersistentServiceController b;
    public Context c;
    public WifiUtils d;
    public PhenotypeManager e;

    private final void b() {
        WorkRequestBuilder agxVar = new WorkRequestBuilder(SQLiteDeviceRegistryCleanupWorker.class);
        agxVar.b("db_cleanup_tag");
        WorkManagerImpl.c(this.c).b("db_cleanup_tag", agxVar.a());
    }

    private final void c() {
        this.e.a();
        b();
        if (!this.d.d() && !this.d.e()) {
            WorkRequestBuilder agxVar = new WorkRequestBuilder(WifiChannelCheckWorker.class);
            Duration ofMinutes = Duration.ofMinutes(20L);
            agxVar.a = true;
            WorkSpec akkVar = agxVar.c;
            akkVar.r = 1;
            long millis = ofMinutes.toMillis();
            if (millis > 18000000) {
                WorkLogger.a();
                WorkLogger.g(akk.a, "Backoff delay duration exceeds maximum value", new Throwable[0]);
                millis = 18000000;
            }
            if (millis < 10000) {
                WorkLogger.a();
                WorkLogger.g(akk.a, "Backoff delay duration less than minimum value", new Throwable[0]);
                millis = 10000;
            }
            akkVar.l = millis;
            agxVar.c.n = Duration.ZERO.toMillis();
            agxVar.b("wireless_channel_check_tag");
            WorkManagerImpl.c(this.c).b("wireless_channel_check_tag", agxVar.a());
        }
        this.b.c();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.PersistentServiceBtReceiver, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        char c;
        a(context);
        String action = intent.getAction();
        intent.getAction();
        Process.myUserHandle();
        Context applicationContext = context.getApplicationContext();
        switch (action.hashCode()) {
            case -905063602:
                if (action.equals("android.intent.action.LOCKED_BOOT_COMPLETED")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 505380757:
                if (action.equals("android.intent.action.TIME_SET")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 798292259:
                if (action.equals("android.intent.action.BOOT_COMPLETED")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 833559602:
                if (action.equals("android.intent.action.USER_UNLOCKED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1737074039:
                if (action.equals("android.intent.action.MY_PACKAGE_REPLACED")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                if (!this.a.isUserUnlocked()) {
                    applicationContext.registerReceiver(this, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                    break;
                } else {
                    c();
                    break;
                }
            case 3:
                c();
                break;
            case 4:
                if (this.a.isUserUnlocked()) {
                    b();
                    break;
                }
                break;
            default:
                ((ParameterizedLoggerApi) f.b().h("com/google/android/apps/auto/aareceiver/service/EntrypointBroadcastReceiver", "onReceive", 67, "EntrypointBroadcastReceiver.java")).p("Unexpected action %s ignored.", action);
                break;
        }
    }
}
