package defpackage;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class cza extends cyl {
    private static final Logger a = Logger.getLogger(cza.class.getName());
    public static final cyx b;
    public volatile int remaining;
    public volatile Set seenExceptions = null;

    static {
        cyx cyzVar;
        Throwable th;
        try {
            cyzVar = new cyy(AtomicReferenceFieldUpdater.newUpdater(cza.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(cza.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            cyzVar = new cyz();
            th = th2;
        }
        b = cyzVar;
        if (th != null) {
            a.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public cza(int i) {
        this.remaining = i;
    }

    public abstract void e(Set set);
}
