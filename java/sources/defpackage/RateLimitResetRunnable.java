package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RateLimitResetRunnable implements Runnable {
    final /* synthetic */ LogRateLimiter a;
    final /* synthetic */ RateLimitRegistry b;

    public RateLimitResetRunnable(RateLimitRegistry ctlVar, LogRateLimiter ctjVar) {
        this.b = ctlVar;
        this.a = ctjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a.remove(this.a);
    }
}
