package defpackage;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ListenableScheduledFutureTask extends TrustedListenableFuture implements ScheduledFuture, dag {
    private final ScheduledFuture b;

    public ListenableScheduledFutureTask(ListenableFuture dagVar, ScheduledFuture scheduledFuture) {
        super(dagVar);
        this.b = scheduledFuture;
    }

    @Override // defpackage.AbstractFutureWithListeners, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = this.a.cancel(IcuMessageFormat);
        if (cancel) {
            this.b.cancel(IcuMessageFormat);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.b.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.b.getDelay(timeUnit);
    }
}
