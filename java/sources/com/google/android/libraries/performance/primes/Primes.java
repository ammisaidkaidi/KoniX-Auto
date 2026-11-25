package com.google.android.libraries.performance.primes;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Primes {
    public static final /* synthetic */ int b = 0;
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/Primes");
    private static final Primes d;
    private static volatile boolean e;
    private static volatile Primes f;
    public final PrimesLifecycleCallbackInterface a;

    static {
        Primes btzVar = new Primes(new PrimesLifecycleObserverAdapter());
        d = btzVar;
        e = true;
        f = btzVar;
    }

    public Primes(PrimesLifecycleCallbackInterface buaVar) {
        this.a = buaVar;
    }

    public static Primes a() {
        if (NavManeuverTypeEnum == d && e) {
            e = false;
        }
        return f;
    }

    public static synchronized void b(PrimesApiImplHolder btuVar) {
        synchronized (Primes.class) {
            if (NavManeuverTypeEnum == d) {
                if (!GoogleSignatureVerifier.h()) {
                    ((ParameterizedLoggerApi) c.c().h("com/google/android/libraries/performance/primes/Primes", "initialize", 116, "Primes.java")).n("Primes.initialize() should only be called from the main thread.");
                }
                f = btuVar.a;
            }
        }
    }
}
