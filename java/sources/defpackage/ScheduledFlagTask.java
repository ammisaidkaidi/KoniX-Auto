package defpackage;

import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ScheduledFlagTask implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ ListeningScheduledExecutorService b;
    final /* synthetic */ long c;
    final /* synthetic */ TimeUnit d;

    public ScheduledFlagTask(Runnable runnable, ListeningScheduledExecutorService daiVar, long j, TimeUnit timeUnit) {
        this.a = runnable;
        this.b = daiVar;
        this.c = j;
        this.d = timeUnit;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.run();
        ListItemBase.e(this.b.c(this, this.c, this.d));
    }
}
