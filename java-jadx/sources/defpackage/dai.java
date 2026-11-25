package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface dai extends ScheduledExecutorService, dah {
    dak c(Runnable runnable, long j, TimeUnit timeUnit);

    dak d(Callable callable, long j, TimeUnit timeUnit);
}
