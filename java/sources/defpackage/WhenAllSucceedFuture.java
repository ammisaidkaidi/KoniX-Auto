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
abstract class WhenAllSucceedFuture extends AggregateFutureImpl {
    private static final Logger c = Logger.getLogger(WhenAllSucceedFuture.class.getName());
    public ImmutableCollection a;
    private final boolean f;
    private final boolean g;

    public WhenAllSucceedFuture(ImmutableCollection cqaVar, boolean z, boolean z2) {
        super(cqaVar.size());
        cqaVar.getClass();
        this.a = cqaVar;
        this.f = z;
        this.g = z2;
    }

    private final void t(Throwable th) {
        ActivityResultDispatchRunnable.getClass();
        if (this.f && !l(ActivityResultDispatchRunnable)) {
            Set set = this.seenExceptions;
            if (set == null) {
                Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                e(newSetFromMap);
                AggregateFutureImpl.b.b(this, newSetFromMap);
                set = this.seenExceptions;
                set.getClass();
            }
            if (v(set, th)) {
                u(ActivityResultDispatchRunnable);
                return;
            }
        }
        if (ActivityResultDispatchRunnable instanceof Error) {
            u(ActivityResultDispatchRunnable);
        }
    }

    private static void u(Throwable th) {
        c.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (ActivityResultDispatchRunnable instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    private static boolean v(Set set, Throwable th) {
        while (ActivityResultDispatchRunnable != null) {
            if (!set.add(ActivityResultDispatchRunnable)) {
                return false;
            }
            th = ActivityResultDispatchRunnable.getCause();
        }
        return true;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        ImmutableCollection cqaVar = this.a;
        return cqaVar != null ? "futures=".concat(cqaVar.toString()) : super.a();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void c() {
        ImmutableCollection cqaVar = this.a;
        s(1);
        if ((cqaVar != null) && isCancelled()) {
            boolean m = m();
            UnmodifiableIterator listIterator = cqaVar.listIterator();
            while (listIterator.hasNext()) {
                ((Future) listIterator.next()).cancel(ProtoCompositeMessageM);
            }
        }
    }

    @Override // defpackage.AggregateFutureImpl
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
            n(i, ProjectionIntentHelper.o(future));
        } catch (ExecutionException e) {
            t(e.getCause());
        } catch (Throwable th) {
            t(ActivityResultDispatchRunnable);
        }
    }

    public final void p(ImmutableCollection cqaVar) {
        int a = AggregateFutureImpl.b.a(this);
        int i = 0;
        ex.s(SingleStringProtoMessage >= 0, "Less than 0 remaining futures");
        if (SingleStringProtoMessage == 0) {
            if (cqaVar != null) {
                UnmodifiableIterator listIterator = cqaVar.listIterator();
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
        ImmutableCollection cqaVar = this.a;
        cqaVar.getClass();
        if (cqaVar.isEmpty()) {
            q();
            return;
        }
        if (!this.f) {
            final ImmutableCollection cqaVar2 = this.g ? this.a : null;
            Runnable runnable = new Runnable() { // from class: cyu
                @Override // java.lang.Runnable
                public final void run() {
                    WhenAllSucceedFuture.this.p(cqaVar2);
                }
            };
            UnmodifiableIterator listIterator = this.a.listIterator();
            while (listIterator.hasNext()) {
                ((ListenableFuture) listIterator.next()).aW(runnable, czj.a);
            }
            return;
        }
        UnmodifiableIterator listIterator2 = this.a.listIterator();
        final int i = 0;
        while (listIterator2.hasNext()) {
            final ListenableFuture dagVar = (ListenableFuture) listIterator2.next();
            dagVar.aW(new Runnable() { // from class: cyv
                @Override // java.lang.Runnable
                public final void run() {
                    WhenAllSucceedFuture cywVar = WhenAllSucceedFuture.this;
                    ListenableFuture dagVar2 = dagVar;
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
