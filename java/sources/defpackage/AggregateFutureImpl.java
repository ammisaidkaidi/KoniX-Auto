package defpackage;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class AggregateFutureImpl extends CombinedFutureBase {
    private static final Logger a = Logger.getLogger(AggregateFutureImpl.class.getName());
    public static final ImmediateFutureBase b;
    public volatile int remaining;
    public volatile Set seenExceptions = null;

    static {
        ImmediateFutureBase cyzVar;
        Throwable th;
        try {
            cyzVar = new ImmediateSuccessFuture(AtomicReferenceFieldUpdater.newUpdater(AggregateFutureImpl.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(AggregateFutureImpl.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            cyzVar = new ImmediateFailedFuture();
            th = th2;
        }
        b = cyzVar;
        if (ActivityResultDispatchRunnable != null) {
            a.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public AggregateFutureImpl(int i) {
        this.remaining = i;
    }

    public abstract void e(Set set);
}
