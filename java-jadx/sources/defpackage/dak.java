package defpackage;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dak extends czu implements ScheduledFuture, dag {
    private final ScheduledFuture b;

    public dak(dag dagVar, ScheduledFuture scheduledFuture) {
        super(dagVar);
        this.b = scheduledFuture;
    }

    @Override // defpackage.czt, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = this.a.cancel(z);
        if (cancel) {
            this.b.cancel(z);
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
