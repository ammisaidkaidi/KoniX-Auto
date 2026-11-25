package com.google.android.libraries.performance.primes.persistent;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PersistentStorage {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/persistent/PersistentStorage");
    public final Context b;
    public final DaggerProviderInterface c;

    public PersistentStorage(Context context, DaggerProviderInterface dnyVar) {
        this.b = context;
        this.c = dnyVar;
    }
}
