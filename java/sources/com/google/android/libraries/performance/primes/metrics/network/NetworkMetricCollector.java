package com.google.android.libraries.performance.primes.metrics.network;

import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkMetricCollector {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector");
    public final DaggerProviderInterface b;

    static {
        ImmutableSet.q("googleapis.com", "adwords.google.com", "m.google.com", "sandbox.google.com");
        Pattern.compile("(?:[^\\/]*\\/)([^;]*)");
        Pattern.compile("([^\\?]+)(\\?+)");
        Pattern.compile("((?:https?:\\/\\/|)[a-zA-Z0-9-_\\.]+(?::\\d+)?)(.*)?");
        Pattern.compile("([a-zA-Z0-9-_]+)");
        Pattern.compile("\\b([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})(:\\d{1,5})?\\b");
    }

    public NetworkMetricCollector(DaggerProviderInterface dnyVar) {
        this.b = dnyVar;
    }
}
