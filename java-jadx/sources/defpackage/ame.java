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
public final class ame implements dag {
    static final alv b;
    public static final Object c;
    volatile Object d;
    volatile alz e;
    volatile amd f;
    static final boolean a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger g = Logger.getLogger(ame.class.getName());

    static {
        alv amcVar;
        try {
            amcVar = new ama(AtomicReferenceFieldUpdater.newUpdater(amd.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(amd.class, amd.class, "c"), AtomicReferenceFieldUpdater.newUpdater(ame.class, amd.class, "f"), AtomicReferenceFieldUpdater.newUpdater(ame.class, alz.class, "e"), AtomicReferenceFieldUpdater.newUpdater(ame.class, Object.class, "d"));
            th = null;
        } catch (Throwable th) {
            th = th;
            amcVar = new amc();
        }
        b = amcVar;
        if (th != null) {
            g.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        c = new Object();
    }

    protected ame() {
    }

    static Object a(dag dagVar) {
        if (dagVar instanceof ame) {
            Object obj = ((ame) dagVar).d;
            if (!(obj instanceof alw)) {
                return obj;
            }
            alw alwVar = (alw) obj;
            if (!alwVar.c) {
                return obj;
            }
            Throwable th = alwVar.d;
            return th != null ? new alw(false, th) : alw.b;
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
                return new alw(false, e);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            sb.append(dagVar);
            return new aly(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(dagVar)), e));
        } catch (ExecutionException e2) {
            return new aly(e2.getCause());
        } catch (Throwable th2) {
            return new aly(th2);
        }
    }

    static void c(ame ameVar) {
        alz alzVar;
        alz alzVar2;
        alz alzVar3 = null;
        while (true) {
            amd amdVar = ameVar.f;
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
                    if (runnable instanceof amb) {
                        amb ambVar = (amb) runnable;
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

    public static ame h() {
        return new ame();
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
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
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
            sb.append("SUCCESS, result=[");
            sb.append(j(i));
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    private static void l(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            g.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    private final void m(amd amdVar) {
        amdVar.b = null;
        while (true) {
            amd amdVar2 = this.f;
            if (amdVar2 != amd.a) {
                amd amdVar3 = null;
                while (amdVar2 != null) {
                    amd amdVar4 = amdVar2.c;
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
        if (obj instanceof alw) {
            Throwable th = ((alw) obj).d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof aly) {
            throw new ExecutionException(((aly) obj).b);
        }
        if (obj == c) {
            return null;
        }
        return obj;
    }

    @Override // defpackage.dag
    public final void aW(Runnable runnable, Executor executor) {
        d(runnable);
        d(executor);
        alz alzVar = this.e;
        if (alzVar != alz.a) {
            alz alzVar2 = new alz(runnable, executor);
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
        if (!(obj == null) && !(obj instanceof amb)) {
            return false;
        }
        alw alwVar = a ? new alw(z, new CancellationException("Future.cancel() was called.")) : z ? alw.a : alw.b;
        boolean z2 = false;
        dag dagVar = this;
        while (true) {
            ame ameVar = (ame) dagVar;
            if (b.d(ameVar, obj, alwVar)) {
                c(ameVar);
                if (!(obj instanceof amb)) {
                    break;
                }
                dagVar = ((amb) obj).b;
                if (!(dagVar instanceof ame)) {
                    dagVar.cancel(z);
                    break;
                }
                obj = ((ame) dagVar).d;
                if (!(obj == null) && !(obj instanceof amb)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = ameVar.d;
                if (!(obj instanceof amb)) {
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
        if (b.d(this, null, new aly(th))) {
            c(this);
        }
    }

    public final void g(dag dagVar) {
        aly alyVar;
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
            amb ambVar = new amb(this, dagVar);
            if (b.d(this, null, ambVar)) {
                try {
                    dagVar.aW(ambVar, amf.a);
                    return;
                } catch (Throwable th) {
                    try {
                        alyVar = new aly(th);
                    } catch (Throwable th2) {
                        alyVar = aly.a;
                    }
                    b.d(this, ambVar, alyVar);
                    return;
                }
            }
            obj = this.d;
        }
        if (obj instanceof alw) {
            dagVar.cancel(((alw) obj).c);
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.d;
        if ((obj2 != null) && (!(obj2 instanceof amb))) {
            return n(obj2);
        }
        amd amdVar = this.f;
        if (amdVar != amd.a) {
            amd amdVar2 = new amd();
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
                    } while (!((obj != null) & (!(obj instanceof amb))));
                    return n(obj);
                }
                amdVar = this.f;
            } while (amdVar != amd.a);
        }
        return n(this.d);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.d instanceof alw;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof amb)) & (this.d != null);
    }

    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            k(sb);
        } else {
            try {
                Object obj = this.d;
                if (obj instanceof amb) {
                    concat = "setFuture=[" + j(((amb) obj).b) + "]";
                } else {
                    concat = null;
                }
            } catch (RuntimeException e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Exception thrown from implementation: ");
                Class<?> cls = e.getClass();
                sb2.append(cls);
                concat = "Exception thrown from implementation: ".concat(String.valueOf(cls));
            }
            if (concat != null && !concat.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(concat);
                sb.append("]");
            } else if (isDone()) {
                k(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.d;
        boolean z = true;
        if ((obj != null) && (!(obj instanceof amb))) {
            return n(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            amd amdVar = this.f;
            if (amdVar != amd.a) {
                amd amdVar2 = new amd();
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
                            if ((obj2 != null) && (!(obj2 instanceof amb))) {
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
            if ((obj3 != null) && (!(obj3 instanceof amb))) {
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
                if (z) {
                    str2 = str2.concat(",");
                }
                concat = str2.concat(" ");
            }
            if (z) {
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
