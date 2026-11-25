package com.google.android.libraries.performance.primes.metrics.startup;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class StartupMetricRecordingService {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService");
    public final MetricDispatcherImpl b;
    public final DaggerInternalFactoryMarker c;
    public final ListeningScheduledExecutorService d;

    public StartupMetricRecordingService(MetricDispatcherAssistedFactory bwoVar, ListeningScheduledExecutorService daiVar, Executor executor, DaggerInternalFactoryMarker dgzVar, DaggerProviderInterface dnyVar) {
        this.c = dgzVar;
        this.d = daiVar;
        this.b = bwoVar.a(executor, dgzVar, dnyVar);
    }
}
