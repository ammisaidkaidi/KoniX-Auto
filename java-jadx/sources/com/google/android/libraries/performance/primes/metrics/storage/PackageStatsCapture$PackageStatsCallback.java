package com.google.android.libraries.performance.primes.metrics.storage;

import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageStats;
import defpackage.cah;
import defpackage.csx;
import java.util.concurrent.Semaphore;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PackageStatsCapture$PackageStatsCallback extends IPackageStatsObserver.Stub {
    private final Semaphore a = new Semaphore(1);
    private volatile PackageStats b;

    private PackageStatsCapture$PackageStatsCallback() {
    }

    public void onGetStatsCompleted(PackageStats packageStats, boolean z) {
        if (z) {
            this.b = packageStats;
        } else {
            ((csx) cah.a.c().h("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCapture$PackageStatsCallback", "onGetStatsCompleted", 51, "PackageStatsCapture.java")).n("Failure getting PackageStats");
        }
        this.a.release();
    }
}
