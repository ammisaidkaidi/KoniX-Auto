package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface ListeningScheduledExecutorService extends ScheduledExecutorService, dah {
    ListenableScheduledFutureTask c(Runnable runnable, long j, TimeUnit timeUnit);

    ListenableScheduledFutureTask d(Callable callable, long j, TimeUnit timeUnit);
}
