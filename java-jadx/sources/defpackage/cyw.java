package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class cyw extends cza {
    private static final Logger c = Logger.getLogger(cyw.class.getName());
    public cqa a;
    private final boolean f;
    private final boolean g;

    public cyw(cqa cqaVar, boolean z, boolean z2) {
        super(cqaVar.size());
        cqaVar.getClass();
        this.a = cqaVar;
        this.f = z;
        this.g = z2;
    }

    private final void t(Throwable th) {
        th.getClass();
        if (this.f && !l(th)) {
            Set set = this.seenExceptions;
            if (set == null) {
                Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                e(newSetFromMap);
                cza.b.b(this, newSetFromMap);
                set = this.seenExceptions;
                set.getClass();
            }
            if (v(set, th)) {
                u(th);
                return;
            }
        }
        if (th instanceof Error) {
            u(th);
        }
    }

    private static void u(Throwable th) {
        c.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    private static boolean v(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    @Override // defpackage.cyp
    protected final String a() {
        cqa cqaVar = this.a;
        return cqaVar != null ? "futures=".concat(cqaVar.toString()) : super.a();
    }

    @Override // defpackage.cyp
    protected final void c() {
        cqa cqaVar = this.a;
        s(1);
        if ((cqaVar != null) && isCancelled()) {
            boolean m = m();
            cst listIterator = cqaVar.listIterator();
            while (listIterator.hasNext()) {
                ((Future) listIterator.next()).cancel(m);
            }
        }
    }

    @Override // defpackage.cza
    public final void e(Set set) {
        set.getClass();
        if (isCancelled()) {
            return;
        }
        Throwable g = g();
        g.getClass();
        v(set, g);
    }

    public abstract void n(int i, Object obj);

    public final void o(int i, Future future) {
        try {
            n(i, hh.o(future));
        } catch (ExecutionException e) {
            t(e.getCause());
        } catch (Throwable th) {
            t(th);
        }
    }

    public final void p(cqa cqaVar) {
        int a = cza.b.a(this);
        int i = 0;
        ex.s(a >= 0, "Less than 0 remaining futures");
        if (a == 0) {
            if (cqaVar != null) {
                cst listIterator = cqaVar.listIterator();
                while (listIterator.hasNext()) {
                    Future future = (Future) listIterator.next();
                    if (!future.isCancelled()) {
                        o(i, future);
                    }
                    i++;
                }
            }
            this.seenExceptions = null;
            q();
            s(2);
        }
    }

    public abstract void q();

    final void r() {
        cqa cqaVar = this.a;
        cqaVar.getClass();
        if (cqaVar.isEmpty()) {
            q();
            return;
        }
        if (!this.f) {
            final cqa cqaVar2 = this.g ? this.a : null;
            Runnable runnable = new Runnable() { // from class: cyu
                @Override // java.lang.Runnable
                public final void run() {
                    cyw.this.p(cqaVar2);
                }
            };
            cst listIterator = this.a.listIterator();
            while (listIterator.hasNext()) {
                ((dag) listIterator.next()).aW(runnable, czj.a);
            }
            return;
        }
        cst listIterator2 = this.a.listIterator();
        final int i = 0;
        while (listIterator2.hasNext()) {
            final dag dagVar = (dag) listIterator2.next();
            dagVar.aW(new Runnable() { // from class: cyv
                @Override // java.lang.Runnable
                public final void run() {
                    cyw cywVar = cyw.this;
                    dag dagVar2 = dagVar;
                    int i2 = i;
                    try {
                        if (dagVar2.isCancelled()) {
                            cywVar.a = null;
                            cywVar.cancel(false);
                        } else {
                            cywVar.o(i2, dagVar2);
                        }
                    } finally {
                        cywVar.p(null);
                    }
                }
            }, czj.a);
            i++;
        }
    }

    public void s(int i) {
        this.a = null;
    }
}
