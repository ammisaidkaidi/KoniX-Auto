package com.google.android.libraries.performance.primes.metrics.core;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MetricDispatcher {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/core/MetricDispatcher");
    public final StopwatchTicker b;

    public MetricDispatcher(final DaggerInternalFactoryMarker dgzVar) {
        this.b = ex.i(new StopwatchTicker() { // from class: bwk
            @Override // defpackage.StopwatchTicker
            public final Object a() {
                return ImmutableList.t(bup.c, (Iterable) DaggerInternalFactoryMarker.this.a());
            }
        });
    }
}
