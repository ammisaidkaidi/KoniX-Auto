package com.google.android.apps.auto.aareceiver.service;

import android.content.Context;
import android.os.SystemClock;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.apps.auto.aareceiver.bluetooth.WirelessDiscoveryController;
import defpackage.WirelessComponent;
import defpackage.OemSettings;
import com.google.android.apps.auto.aareceiver.wireless.utils.WifiUtils;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.CommonObjectsAndPreconditionsUtil;
import defpackage.GuavaPreconditionsSuppliersUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public class WifiChannelCheckWorker extends Worker {
    private static final FloggerLoggerFactory g = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker");
    private final WifiUtils h;
    private final WirelessDiscoveryController i;
    private final OemSettings j;

    public WifiChannelCheckWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        WirelessComponent bayVar = (WirelessComponent) CommonObjectsAndPreconditionsUtil.s(context, WirelessComponent.class);
        this.h = bayVar.g();
        this.i = bayVar.c();
        this.j = bayVar.f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0073, code lost:
    
        if (r12.h.c() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
    
        ((defpackage.ParameterizedLoggerApi) com.google.android.apps.auto.aareceiver.service.WifiChannelCheckWorker.g.c().h("com/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker", "doWork", 59, "WifiChannelCheckWorker.java")).n("Couldn't find channels");
        r0 = defpackage.GuavaPreconditionsSuppliersUtil.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
    
        if (r4 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        r12.h.f(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c5  */
    @Override // androidx.work.Worker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final GuavaPreconditionsSuppliersUtil h() {
        boolean z;
        if (this.h.e()) {
            return ex.h();
        }
        if (!this.h.c()) {
            try {
                try {
                    WifiUtils bhiVar = this.h;
                    if (bhiVar.a.getWifiState() == 3) {
                        z = false;
                    } else if (bhiVar.a.getWifiState() == 2) {
                        z = false;
                    } else {
                        z = this.h.f(true);
                        if (!z) {
                            try {
                                ((ParameterizedLoggerApi) g.c().h("com/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker", "doWork", 55, "WifiChannelCheckWorker.java")).n("Couldn't enable WiFi");
                            } catch (RuntimeException e) {
                                ((ParameterizedLoggerApi) g.c().h("com/google/android/apps/auto/aareceiver/service/WifiChannelCheckWorker", "doWork", 64, "WifiChannelCheckWorker.java")).n("Failed to retrieve channels");
                                GuavaPreconditionsSuppliersUtil g2 = ex.g();
                                if (z) {
                                    this.h.f(false);
                                }
                                return g2;
                            }
                        }
                    }
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    while (true) {
                        if (this.h.c()) {
                            break;
                        }
                        SystemClock.sleep(300L);
                        if (10000 + elapsedRealtime <= SystemClock.elapsedRealtime()) {
                            break;
                        }
                    }
                    if (z) {
                        this.h.f(false);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        this.h.f(false);
                    }
                    throw th;
                }
            } catch (RuntimeException e2) {
                z = false;
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                }
                throw th;
            }
        }
        if (!this.i.i() && this.j.e()) {
            this.i.d();
        }
        return ex.h();
    }
}
