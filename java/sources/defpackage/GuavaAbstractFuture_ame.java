package defpackage;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GuavaAbstractFuture_ame implements ListenableFuture {
    static final FutureAtomicHelperBase b;
    public static final Object c;
    volatile Object d;
    volatile FutureListenerNode e;
    volatile FutureWaiterNode f;
    static final boolean a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger g = Logger.getLogger(GuavaAbstractFuture_ame.class.getName());

    static {
        FutureAtomicHelperBase amcVar;
        try {
            amcVar = new FutureAtomicFieldUpdaterHelper(AtomicReferenceFieldUpdater.newUpdater(FutureWaiterNode.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(FutureWaiterNode.class, FutureWaiterNode.class, "c"), AtomicReferenceFieldUpdater.newUpdater(GuavaAbstractFuture_ame.class, FutureWaiterNode.class, "f"), AtomicReferenceFieldUpdater.newUpdater(GuavaAbstractFuture_ame.class, FutureListenerNode.class, "e"), AtomicReferenceFieldUpdater.newUpdater(GuavaAbstractFuture_ame.class, Object.class, "d"));
            th = null;
        } catch (Throwable th) {
            th = th;
            amcVar = new FuturePlainAtomicHelper();
        }
        b = amcVar;
        if (ActivityResultDispatchRunnable != null) {
            g.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        c = new Object();
    }

    protected GuavaAbstractFuture_ame() {
    }

    static Object a(ListenableFuture dagVar) {
        if (dagVar instanceof GuavaAbstractFuture_ame) {
            Object obj = ((GuavaAbstractFuture_ame) dagVar).d;
            if (!(obj instanceof FutureWaiterNodeHelper)) {
                return obj;
            }
            FutureWaiterNodeHelper alwVar = (FutureWaiterNodeHelper) obj;
            if (!alwVar.c) {
                return obj;
            }
            Throwable th = alwVar.d;
            return th != null ? new FutureWaiterNodeHelper(false, th) : alw.b;
        }
        boolean isCancelled = dagVar.isCancelled();
        if ((!a) && isCancelled) {
            return alw.b;
        }
        try {
            Object i = i(dagVar);
            return i == null ? c : i;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new FutureWaiterNodeHelper(false, e);
            }
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            StaggeredGridLayoutParams.append(dagVar);
            return new FutureListenerReleaseHelper(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(dagVar)), e));
        } catch (ExecutionException e2) {
            return new FutureListenerReleaseHelper(e2.getCause());
        } catch (Throwable th2) {
            return new FutureListenerReleaseHelper(th2);
        }
    }

    static void c(GuavaAbstractFuture_ame ameVar) {
        FutureListenerNode alzVar;
        FutureListenerNode alzVar2;
        FutureListenerNode alzVar3 = null;
        while (true) {
            FutureWaiterNode amdVar = ameVar.f;
            if (b.e(ameVar, amdVar, amd.a)) {
                while (amdVar != null) {
                    Thread thread = amdVar.b;
                    if (thread != null) {
                        amdVar.b = null;
                        LockSupport.unpark(thread);
                    }
                    amdVar = amdVar.c;
                }
                do {
                    alzVar = ameVar.e;
                } while (!b.c(ameVar, alzVar, alz.a));
                while (true) {
                    alzVar2 = alzVar3;
                    alzVar3 = alzVar;
                    if (alzVar3 == null) {
                        break;
                    }
                    alzVar = alzVar3.d;
                    alzVar3.d = alzVar2;
                }
                while (alzVar2 != null) {
                    alzVar3 = alzVar2.d;
                    Runnable runnable = alzVar2.b;
                    if (runnable instanceof FutureListenerRunnable_amb) {
                        FutureListenerRunnable_amb ambVar = (FutureListenerRunnable_amb) runnable;
                        ameVar = ambVar.a;
                        if (ameVar.d == ambVar) {
                            if (b.d(ameVar, ambVar, a(ambVar.b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        l(runnable, alzVar2.c);
                    }
                    alzVar2 = alzVar3;
                }
                return;
            }
        }
    }

    static void d(Object obj) {
        if (obj == null) {
            throw null;
        }
    }

    public static GuavaAbstractFuture_ame h() {
        return new GuavaAbstractFuture_ame();
    }

    private static Object i(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (IcuMessageFormat) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (IcuMessageFormat) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private final String j(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    private final void k(StringBuilder sb) {
        try {
            Object i = i(this);
            StaggeredGridLayoutParams.append("SUCCESS, result=[");
            StaggeredGridLayoutParams.append(j(NavInstructionTypeEnum));
            StaggeredGridLayoutParams.append("]");
        } catch (CancellationException e) {
            StaggeredGridLayoutParams.append("CANCELLED");
        } catch (RuntimeException e2) {
            StaggeredGridLayoutParams.append("UNKNOWN, cause=[");
            StaggeredGridLayoutParams.append(e2.getClass());
            StaggeredGridLayoutParams.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            StaggeredGridLayoutParams.append("FAILURE, cause=[");
            StaggeredGridLayoutParams.append(e3.getCause());
            StaggeredGridLayoutParams.append("]");
        }
    }

    private static void l(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            g.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    private final void m(FutureWaiterNode amdVar) {
        amdVar.b = null;
        while (true) {
            FutureWaiterNode amdVar2 = this.f;
            if (amdVar2 != amd.a) {
                FutureWaiterNode amdVar3 = null;
                while (amdVar2 != null) {
                    FutureWaiterNode amdVar4 = amdVar2.c;
                    if (amdVar2.b != null) {
                        amdVar3 = amdVar2;
                    } else if (amdVar3 != null) {
                        amdVar3.c = amdVar4;
                        if (amdVar3.b == null) {
                            break;
                        }
                    } else if (!b.e(this, amdVar2, amdVar4)) {
                        break;
                    }
                    amdVar2 = amdVar4;
                }
                return;
            }
            return;
        }
    }

    private static final Object n(Object obj) {
        if (obj instanceof FutureWaiterNodeHelper) {
            Throwable th = ((FutureWaiterNodeHelper) obj).d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(ActivityResultDispatchRunnable);
            throw cancellationException;
        }
        if (obj instanceof FutureListenerReleaseHelper) {
            throw new ExecutionException(((FutureListenerReleaseHelper) obj).b);
        }
        if (obj == c) {
            return null;
        }
        return obj;
    }

    @Override // defpackage.ListenableFuture
    public final void aW(Runnable runnable, Executor executor) {
        d(runnable);
        d(executor);
        FutureListenerNode alzVar = this.e;
        if (alzVar != alz.a) {
            FutureListenerNode alzVar2 = new FutureListenerNode(runnable, executor);
            do {
                alzVar2.d = alzVar;
                if (b.c(this, alzVar, alzVar2)) {
                    return;
                } else {
                    alzVar = this.e;
                }
            } while (alzVar != alz.a);
        }
        l(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.d;
        if (!(obj == null) && !(obj instanceof FutureListenerRunnable_amb)) {
            return false;
        }
        FutureWaiterNodeHelper alwVar = a ? new FutureWaiterNodeHelper(z, new CancellationException("Future.cancel() was called.")) : z ? alw.a : alw.b;
        boolean z2 = false;
        ListenableFuture dagVar = this;
        while (true) {
            GuavaAbstractFuture_ame ameVar = (GuavaAbstractFuture_ame) dagVar;
            if (b.d(ameVar, obj, alwVar)) {
                c(ameVar);
                if (!(obj instanceof FutureListenerRunnable_amb)) {
                    break;
                }
                dagVar = ((FutureListenerRunnable_amb) obj).b;
                if (!(dagVar instanceof GuavaAbstractFuture_ame)) {
                    dagVar.cancel(IcuMessageFormat);
                    break;
                }
                obj = ((GuavaAbstractFuture_ame) dagVar).d;
                if (!(obj == null) && !(obj instanceof FutureListenerRunnable_amb)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = ameVar.d;
                if (!(obj instanceof FutureListenerRunnable_amb)) {
                    return z2;
                }
            }
        }
        return true;
    }

    public final void e(Object obj) {
        if (obj == null) {
            obj = c;
        }
        if (b.d(this, null, obj)) {
            c(this);
        }
    }

    public final void f(Throwable th) {
        if (b.d(this, null, new FutureListenerReleaseHelper(ActivityResultDispatchRunnable))) {
            c(this);
        }
    }

    public final void g(ListenableFuture dagVar) {
        FutureListenerReleaseHelper alyVar;
        d(dagVar);
        Object obj = this.d;
        if (obj == null) {
            if (dagVar.isDone()) {
                if (b.d(this, null, a(dagVar))) {
                    c(this);
                    return;
                }
                return;
            }
            FutureListenerRunnable_amb ambVar = new FutureListenerRunnable_amb(this, dagVar);
            if (b.d(this, null, ambVar)) {
                try {
                    dagVar.aW(ambVar, amf.a);
                    return;
                } catch (Throwable th) {
                    try {
                        alyVar = new FutureListenerReleaseHelper(ActivityResultDispatchRunnable);
                    } catch (Throwable th2) {
                        alyVar = aly.a;
                    }
                    b.d(this, ambVar, alyVar);
                    return;
                }
            }
            obj = this.d;
        }
        if (obj instanceof FutureWaiterNodeHelper) {
            dagVar.cancel(((FutureWaiterNodeHelper) obj).c);
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.d;
        if ((obj2 != null) && (!(obj2 instanceof FutureListenerRunnable_amb))) {
            return n(obj2);
        }
        FutureWaiterNode amdVar = this.f;
        if (amdVar != amd.a) {
            FutureWaiterNode amdVar2 = new FutureWaiterNode();
            do {
                amdVar2.a(amdVar);
                if (b.e(this, amdVar, amdVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            m(amdVar2);
                            throw new InterruptedException();
                        }
                        obj = this.d;
                    } while (!((obj != null) & (!(obj instanceof FutureListenerRunnable_amb))));
                    return n(obj);
                }
                amdVar = this.f;
            } while (amdVar != amd.a);
        }
        return n(this.d);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.d instanceof FutureWaiterNodeHelper;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof FutureListenerRunnable_amb)) & (this.d != null);
    }

    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append(super.toString());
        StaggeredGridLayoutParams.append("[status=");
        if (isCancelled()) {
            StaggeredGridLayoutParams.append("CANCELLED");
        } else if (isDone()) {
            k(StaggeredGridLayoutParams);
        } else {
            try {
                Object obj = this.d;
                if (obj instanceof FutureListenerRunnable_amb) {
                    concat = "setFuture=[" + j(((FutureListenerRunnable_amb) obj).b) + "]";
                } else {
                    concat = null;
                }
            } catch (RuntimeException e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Exception thrown from implementation: ");
                Class<?> cls = e.getClass();
                sb2.append(GalTransportThread);
                concat = "Exception thrown from implementation: ".concat(String.valueOf(GalTransportThread));
            }
            if (concat != null && !concat.isEmpty()) {
                StaggeredGridLayoutParams.append("PENDING, info=[");
                StaggeredGridLayoutParams.append(concat);
                StaggeredGridLayoutParams.append("]");
            } else if (isDone()) {
                k(StaggeredGridLayoutParams);
            } else {
                StaggeredGridLayoutParams.append("PENDING");
            }
        }
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(ProtoMessageTwoIntsAndFlagValue);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.d;
        boolean z = true;
        if ((obj != null) && (!(obj instanceof FutureListenerRunnable_amb))) {
            return n(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            FutureWaiterNode amdVar = this.f;
            if (amdVar != amd.a) {
                FutureWaiterNode amdVar2 = new FutureWaiterNode();
                do {
                    amdVar2.a(amdVar);
                    if (b.e(this, amdVar, amdVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                m(amdVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.d;
                            if ((obj2 != null) && (!(obj2 instanceof FutureListenerRunnable_amb))) {
                                return n(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        m(amdVar2);
                    } else {
                        amdVar = this.f;
                    }
                } while (amdVar != amd.a);
            }
            return n(this.d);
        }
        while (nanos > 0) {
            Object obj3 = this.d;
            if ((obj3 != null) && (!(obj3 instanceof FutureListenerRunnable_amb))) {
                return n(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String ameVar = toString();
        String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
        String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(Locale.ROOT);
        if (nanos + 1000 < 0) {
            String concat = str.concat(" (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            if (convert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (convert > 0) {
                String str2 = concat + convert + " " + lowerCase;
                if (IcuMessageFormat) {
                    str2 = str2.concat(",");
                }
                concat = str2.concat(" ");
            }
            if (IcuMessageFormat) {
                concat = concat + nanos2 + " nanoseconds ";
            }
            str = concat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(str.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(str + " for " + ameVar);
    }
}
