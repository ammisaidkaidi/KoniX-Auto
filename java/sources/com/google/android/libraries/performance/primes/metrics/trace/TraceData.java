package com.google.android.libraries.performance.primes.metrics.trace;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TraceData {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/trace/TraceData");
    public final StorageFileHandle c;
    public final AtomicInteger b = new AtomicInteger(0);
    public final Map d = new ConcurrentHashMap();
    private final ThreadLocal f = new TracerThreadLocal(this);
    public final List e = new ArrayList();

    public TraceData(String str) {
        this.c = new StorageFileHandle(str, Thread.currentThread().getId(), 2);
    }

    final int a() {
        return this.b.get();
    }

    final int b() {
        return this.b.incrementAndGet();
    }

    public final ArrayDeque c() {
        return (ArrayDeque) ((WeakReference) this.f.get()).get();
    }
}
