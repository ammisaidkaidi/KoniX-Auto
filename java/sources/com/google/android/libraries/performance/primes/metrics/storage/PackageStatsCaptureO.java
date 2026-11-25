package com.google.android.libraries.performance.primes.metrics.storage;

import android.app.usage.StorageStats;
import android.app.usage.StorageStatsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.os.Process;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import java.io.IOException;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PackageStatsCaptureO {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.UUID] */
    static PackageStats a(Context context) {
        UUID uuid;
        GoogleSignatureVerifier.e();
        StorageManager storageManager = (StorageManager) context.getSystemService(StorageManager.class);
        if (storageManager == null) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO", "getPackageStats", 30, "PackageStatsCaptureO.java")).n("StorageManager is not available");
            return null;
        }
        try {
            try {
                StorageStatsManager storageStatsManager = (StorageStatsManager) context.getSystemService(StorageStatsManager.class);
                String packageName = context.getPackageName();
                PackageStats packageStats = new PackageStats(packageName);
                for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                    if (storageVolume.getState().equals("mounted")) {
                        Object uuid2 = storageVolume.getUuid();
                        if (uuid2 == 0) {
                            try {
                                uuid2 = StorageManager.UUID_DEFAULT;
                                uuid = uuid2;
                            } catch (IllegalArgumentException e) {
                                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO", "getUuid", 70, "PackageStatsCaptureO.java")).p("Invalid UUID format: '%s'", uuid2);
                                uuid = null;
                            }
                        } else {
                            uuid = UUID.fromString(uuid2);
                        }
                        if (uuid != null) {
                            try {
                                StorageStats queryStatsForPackage = storageStatsManager.queryStatsForPackage(uuid, packageName, Process.myUserHandle());
                                if (StorageManager.UUID_DEFAULT.equals(uuid)) {
                                    packageStats.codeSize += queryStatsForPackage.getAppBytes();
                                    packageStats.dataSize += queryStatsForPackage.getDataBytes() - queryStatsForPackage.getCacheBytes();
                                    packageStats.cacheSize += queryStatsForPackage.getCacheBytes();
                                } else {
                                    packageStats.externalCodeSize += queryStatsForPackage.getAppBytes();
                                    packageStats.externalDataSize += queryStatsForPackage.getDataBytes() - queryStatsForPackage.getCacheBytes();
                                    packageStats.externalCacheSize += queryStatsForPackage.getCacheBytes();
                                }
                            } catch (PackageManager.NameNotFoundException | IOException | RuntimeException e2) {
                                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO", "getPackageStats", 48, "PackageStatsCaptureO.java")).n("queryStatsForPackage() call failed");
                            }
                        }
                    }
                }
                return packageStats;
            } catch (Error e3) {
                e = e3;
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO", "getPackageStats", 55, "PackageStatsCaptureO.java")).n("StorageStatsManager is not available");
                return null;
            }
        } catch (RuntimeException e4) {
            e = e4;
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO", "getPackageStats", 55, "PackageStatsCaptureO.java")).n("StorageStatsManager is not available");
            return null;
        }
    }
}
