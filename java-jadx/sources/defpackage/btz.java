package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btz {
    public static final /* synthetic */ int b = 0;
    private static final csz c = csz.g("com/google/android/libraries/performance/primes/Primes");
    private static final btz d;
    private static volatile boolean e;
    private static volatile btz f;
    public final bua a;

    static {
        btz btzVar = new btz(new bty());
        d = btzVar;
        e = true;
        f = btzVar;
    }

    public btz(bua buaVar) {
        this.a = buaVar;
    }

    public static btz a() {
        if (f == d && e) {
            e = false;
        }
        return f;
    }

    public static synchronized void b(btu btuVar) {
        synchronized (btz.class) {
            if (f == d) {
                if (!bjq.h()) {
                    ((csx) c.c().h("com/google/android/libraries/performance/primes/Primes", "initialize", 116, "Primes.java")).n("Primes.initialize() should only be called from the main thread.");
                }
                f = btuVar.a;
            }
        }
    }
}
