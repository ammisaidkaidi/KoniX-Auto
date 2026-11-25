package defpackage;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cyp extends daz implements dag {
    private static final Logger a;
    private static final Object b;
    public static final boolean d;
    public static final cyc e;
    public volatile cyg listeners;
    public volatile Object value;
    public volatile cyo waiters;

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        cyc cyjVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e2) {
            z = false;
        }
        d = z;
        a = Logger.getLogger(cyp.class.getName());
        try {
            cyjVar = new cyn();
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            try {
                th = null;
                th2 = th3;
                cyjVar = new cyh(AtomicReferenceFieldUpdater.newUpdater(cyo.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(cyo.class, cyo.class, "next"), AtomicReferenceFieldUpdater.newUpdater(cyp.class, cyo.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(cyp.class, cyg.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(cyp.class, Object.class, "value"));
            } catch (Throwable th4) {
                th = th4;
                th2 = th3;
                cyjVar = new cyj();
            }
        }
        e = cyjVar;
        if (th != null) {
            Logger logger = a;
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        b = new Object();
    }

    protected cyp() {
    }

    private static Object e(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException e2) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(dag dagVar) {
        Throwable g;
        if (dagVar instanceof cyk) {
            Object obj = ((cyp) dagVar).value;
            if (obj instanceof cyd) {
                cyd cydVar = (cyd) obj;
                if (cydVar.c) {
                    Throwable th = cydVar.d;
                    obj = th != null ? new cyd(false, th) : cyd.b;
                }
            }
            obj.getClass();
            return obj;
        }
        if ((dagVar instanceof daz) && (g = ((daz) dagVar).g()) != null) {
            return new cyf(g);
        }
        boolean isCancelled = dagVar.isCancelled();
        if ((!d) && isCancelled) {
            cyd cydVar2 = cyd.b;
            cydVar2.getClass();
            return cydVar2;
        }
        try {
            Object e2 = e(dagVar);
            if (!isCancelled) {
                return e2 == null ? b : e2;
            }
            String valueOf = String.valueOf(dagVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(valueOf);
            return new cyd(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e3) {
            if (isCancelled) {
                return new cyd(false, e3);
            }
            String valueOf2 = String.valueOf(dagVar);
            String.valueOf(valueOf2).length();
            return new cyf(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(valueOf2)), e3));
        } catch (ExecutionException e4) {
            if (!isCancelled) {
                return new cyf(e4.getCause());
            }
            String valueOf3 = String.valueOf(dagVar);
            String.valueOf(valueOf3).length();
            return new cyd(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(valueOf3)), e4));
        } catch (Throwable th2) {
            return new cyf(th2);
        }
    }

    public static void h(cyp cypVar) {
        cyg cygVar;
        cyg cygVar2;
        cyg cygVar3 = null;
        while (true) {
            cyo cyoVar = cypVar.waiters;
            if (e.e(cypVar, cyoVar, cyo.a)) {
                while (cyoVar != null) {
                    Thread thread = cyoVar.thread;
                    if (thread != null) {
                        cyoVar.thread = null;
                        LockSupport.unpark(thread);
                    }
                    cyoVar = cyoVar.next;
                }
                cypVar.c();
                do {
                    cygVar = cypVar.listeners;
                } while (!e.c(cypVar, cygVar, cyg.a));
                while (true) {
                    cygVar2 = cygVar3;
                    cygVar3 = cygVar;
                    if (cygVar3 == null) {
                        break;
                    }
                    cygVar = cygVar3.next;
                    cygVar3.next = cygVar2;
                }
                while (cygVar2 != null) {
                    cygVar3 = cygVar2.next;
                    Runnable runnable = cygVar2.b;
                    runnable.getClass();
                    if (runnable instanceof cyi) {
                        cyi cyiVar = (cyi) runnable;
                        cypVar = cyiVar.a;
                        if (cypVar.value == cyiVar) {
                            if (e.d(cypVar, cyiVar, f(cyiVar.b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        Executor executor = cygVar2.c;
                        executor.getClass();
                        q(runnable, executor);
                    }
                    cygVar2 = cygVar3;
                }
                return;
            }
        }
    }

    private final void n(StringBuilder sb) {
        try {
            Object e2 = e(this);
            sb.append("SUCCESS, result=[");
            if (e2 == null) {
                sb.append("null");
            } else if (e2 == this) {
                sb.append("this future");
            } else {
                sb.append(e2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(e2)));
            }
            sb.append("]");
        } catch (CancellationException e3) {
            sb.append("CANCELLED");
        } catch (RuntimeException e4) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e4.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e5) {
            sb.append("FAILURE, cause=[");
            sb.append(e5.getCause());
            sb.append("]");
        }
    }

    private final void o(StringBuilder sb) {
        String concat;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof cyi) {
            sb.append(", setFuture=[");
            p(sb, ((cyi) obj).b);
            sb.append("]");
        } else {
            try {
                concat = a();
                if (true == coe.d(concat)) {
                    concat = null;
                }
            } catch (RuntimeException | StackOverflowError e2) {
                String valueOf = String.valueOf(e2.getClass());
                String.valueOf(valueOf).length();
                concat = "Exception thrown from implementation: ".concat(String.valueOf(valueOf));
            }
            if (concat != null) {
                sb.append(", info=[");
                sb.append(concat);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            n(sb);
        }
    }

    private final void p(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e2) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e2.getClass());
        }
    }

    private static void q(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = a;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e2);
        }
    }

    private final void r(cyo cyoVar) {
        cyoVar.thread = null;
        while (true) {
            cyo cyoVar2 = this.waiters;
            if (cyoVar2 != cyo.a) {
                cyo cyoVar3 = null;
                while (cyoVar2 != null) {
                    cyo cyoVar4 = cyoVar2.next;
                    if (cyoVar2.thread != null) {
                        cyoVar3 = cyoVar2;
                    } else if (cyoVar3 != null) {
                        cyoVar3.next = cyoVar4;
                        if (cyoVar3.thread == null) {
                            break;
                        }
                    } else if (!e.e(this, cyoVar2, cyoVar4)) {
                        break;
                    }
                    cyoVar2 = cyoVar4;
                }
                return;
            }
            return;
        }
    }

    private static final Object s(Object obj) {
        if (obj instanceof cyd) {
            Throwable th = ((cyd) obj).d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof cyf) {
            throw new ExecutionException(((cyf) obj).b);
        }
        if (obj == b) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String a() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    @Override // defpackage.dag
    public void aW(Runnable runnable, Executor executor) {
        cyg cygVar;
        runnable.getClass();
        executor.getClass();
        if (!isDone() && (cygVar = this.listeners) != cyg.a) {
            cyg cygVar2 = new cyg(runnable, executor);
            do {
                cygVar2.next = cygVar;
                if (e.c(this, cygVar, cygVar2)) {
                    return;
                } else {
                    cygVar = this.listeners;
                }
            } while (cygVar != cyg.a);
        }
        q(runnable, executor);
    }

    protected void c() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        cyd cydVar;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof cyi)) {
            return false;
        }
        if (d) {
            cydVar = new cyd(z, new CancellationException("Future.cancel() was called."));
        } else {
            cydVar = z ? cyd.a : cyd.b;
            cydVar.getClass();
        }
        boolean z2 = false;
        cyp cypVar = this;
        while (true) {
            if (e.d(cypVar, obj, cydVar)) {
                if (z) {
                    cypVar.i();
                }
                h(cypVar);
                if (!(obj instanceof cyi)) {
                    break;
                }
                dag dagVar = ((cyi) obj).b;
                if (!(dagVar instanceof cyk)) {
                    dagVar.cancel(z);
                    break;
                }
                cypVar = (cyp) dagVar;
                obj = cypVar.value;
                if (!(obj == null) && !(obj instanceof cyi)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = cypVar.value;
                if (!(obj instanceof cyi)) {
                    return z2;
                }
            }
        }
        return true;
    }

    protected boolean d(dag dagVar) {
        cyf cyfVar;
        dagVar.getClass();
        Object obj = this.value;
        if (obj == null) {
            if (dagVar.isDone()) {
                if (!e.d(this, null, f(dagVar))) {
                    return false;
                }
                h(this);
                return true;
            }
            cyi cyiVar = new cyi(this, dagVar);
            if (e.d(this, null, cyiVar)) {
                try {
                    dagVar.aW(cyiVar, czj.a);
                } catch (Throwable th) {
                    try {
                        cyfVar = new cyf(th);
                    } catch (Throwable th2) {
                        cyfVar = cyf.a;
                    }
                    e.d(this, cyiVar, cyfVar);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof cyd) {
            dagVar.cancel(((cyd) obj).c);
        }
        return false;
    }

    @Override // defpackage.daz
    public final Throwable g() {
        if (!(this instanceof cyk)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof cyf) {
            return ((cyf) obj).b;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.value;
        if ((obj2 != null) && (!(obj2 instanceof cyi))) {
            return s(obj2);
        }
        cyo cyoVar = this.waiters;
        if (cyoVar != cyo.a) {
            cyo cyoVar2 = new cyo();
            do {
                cyoVar2.a(cyoVar);
                if (e.e(this, cyoVar, cyoVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            r(cyoVar2);
                            throw new InterruptedException();
                        }
                        obj = this.value;
                    } while (!((obj != null) & (!(obj instanceof cyi))));
                    return s(obj);
                }
                cyoVar = this.waiters;
            } while (cyoVar != cyo.a);
        }
        Object obj3 = this.value;
        obj3.getClass();
        return s(obj3);
    }

    protected void i() {
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof cyd;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof cyi)) & (this.value != null);
    }

    public final void j(Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m());
        }
    }

    protected boolean k(Object obj) {
        if (obj == null) {
            obj = b;
        }
        if (!e.d(this, null, obj)) {
            return false;
        }
        h(this);
        return true;
    }

    protected boolean l(Throwable th) {
        th.getClass();
        if (!e.d(this, null, new cyf(th))) {
            return false;
        }
        h(this);
        return true;
    }

    protected final boolean m() {
        Object obj = this.value;
        return (obj instanceof cyd) && ((cyd) obj).c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            n(sb);
        } else {
            o(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        boolean z = true;
        if ((obj != null) && (!(obj instanceof cyi))) {
            return s(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            cyo cyoVar = this.waiters;
            if (cyoVar != cyo.a) {
                cyo cyoVar2 = new cyo();
                do {
                    cyoVar2.a(cyoVar);
                    if (e.e(this, cyoVar, cyoVar2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                r(cyoVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof cyi))) {
                                return s(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        r(cyoVar2);
                    } else {
                        cyoVar = this.waiters;
                    }
                } while (cyoVar != cyo.a);
            }
            Object obj3 = this.value;
            obj3.getClass();
            return s(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.value;
            if ((obj4 != null) && (!(obj4 instanceof cyi))) {
                return s(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String cypVar = toString();
        String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
        String lowerCase2 = timeUnit.toString().toLowerCase(Locale.ROOT);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
        sb.append("Waited ");
        sb.append(j);
        sb.append(" ");
        sb.append(lowerCase2);
        String sb2 = sb.toString();
        if (nanos + 1000 < 0) {
            String concat = sb2.concat(" (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            if (convert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (convert > 0) {
                String valueOf = String.valueOf(concat);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 21 + String.valueOf(lowerCase).length());
                sb3.append(valueOf);
                sb3.append(convert);
                sb3.append(" ");
                sb3.append(lowerCase);
                String sb4 = sb3.toString();
                if (z) {
                    sb4 = sb4.concat(",");
                }
                concat = String.valueOf(sb4).concat(" ");
            }
            if (z) {
                String valueOf2 = String.valueOf(concat);
                StringBuilder sb5 = new StringBuilder(String.valueOf(valueOf2).length() + 33);
                sb5.append(valueOf2);
                sb5.append(nanos2);
                sb5.append(" nanoseconds ");
                concat = sb5.toString();
            }
            sb2 = String.valueOf(concat).concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(String.valueOf(sb2).concat(" but future completed as timeout expired"));
        }
        StringBuilder sb6 = new StringBuilder(String.valueOf(sb2).length() + 5 + String.valueOf(cypVar).length());
        sb6.append(sb2);
        sb6.append(" for ");
        sb6.append(cypVar);
        throw new TimeoutException(sb6.toString());
    }
}
