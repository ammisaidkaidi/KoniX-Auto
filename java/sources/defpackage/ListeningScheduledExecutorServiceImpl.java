package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ListeningScheduledExecutorServiceImpl extends AbstractListeningExecutorService implements ListeningScheduledExecutorService {
    final ScheduledExecutorService a;

    public ListeningScheduledExecutorServiceImpl(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.a = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final ListenableScheduledFutureTask schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ListenableFutureTask o = ListenableFutureTask.o(runnable, null);
        return new ListenableScheduledFutureTask(o, this.a.schedule(o, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final ListenableScheduledFutureTask schedule(Callable callable, long j, TimeUnit timeUnit) {
        ListenableFutureTask n = ListenableFutureTask.n(callable);
        return new ListenableScheduledFutureTask(n, this.a.schedule(n, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ScheduledTaskRunnable dalVar = new ScheduledTaskRunnable(runnable);
        return new ListenableScheduledFutureTask(dalVar, this.a.scheduleAtFixedRate(dalVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ScheduledTaskRunnable dalVar = new ScheduledTaskRunnable(runnable);
        return new ListenableScheduledFutureTask(dalVar, this.a.scheduleWithFixedDelay(dalVar, j, j2, timeUnit));
    }
}
