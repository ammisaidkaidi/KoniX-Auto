package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dam extends cyq implements dai {
    final ScheduledExecutorService a;

    public dam(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.a = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final dak schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        dax o = dax.o(runnable, null);
        return new dak(o, this.a.schedule(o, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final dak schedule(Callable callable, long j, TimeUnit timeUnit) {
        dax n = dax.n(callable);
        return new dak(n, this.a.schedule(n, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        dal dalVar = new dal(runnable);
        return new dak(dalVar, this.a.scheduleAtFixedRate(dalVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        dal dalVar = new dal(runnable);
        return new dak(dalVar, this.a.scheduleWithFixedDelay(dalVar, j, j2, timeUnit));
    }
}
