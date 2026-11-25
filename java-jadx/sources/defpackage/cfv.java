package defpackage;

import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cfv implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ dai b;
    final /* synthetic */ long c;
    final /* synthetic */ TimeUnit d;

    public cfv(Runnable runnable, dai daiVar, long j, TimeUnit timeUnit) {
        this.a = runnable;
        this.b = daiVar;
        this.c = j;
        this.d = timeUnit;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.run();
        aoj.e(this.b.c(this, this.c, this.d));
    }
}
