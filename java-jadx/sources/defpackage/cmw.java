package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cmw {
    public final cmt a;
    public final das d;
    public final AtomicLong b = new AtomicLong(b(Integer.MIN_VALUE, Integer.MIN_VALUE));
    public final AtomicReference c = new AtomicReference(null);
    private final AtomicReference e = new AtomicReference(null);
    private final Executor f = hi.m(czj.a);

    public cmw(czb czbVar, Executor executor) {
        das e = das.e();
        this.d = e;
        cmt cmtVar = new cmt(czbVar, executor);
        this.a = cmtVar;
        e.aW(cmtVar, czj.a);
    }

    public static int a(long j) {
        return (int) (j >>> 32);
    }

    public static long b(int i, int i2) {
        return (i2 & 4294967295L) | (i << 32);
    }

    public final dag c() {
        long j;
        final int a;
        if (this.d.isDone()) {
            return this.d;
        }
        do {
            j = this.b.get();
            a = a(j);
        } while (!this.b.compareAndSet(j, b(a, ((int) j) + 1)));
        final das e = das.e();
        dag dagVar = (dag) this.e.getAndSet(e);
        e.d(dagVar == null ? hh.m(cnm.a(new czb() { // from class: cmq
            @Override // defpackage.czb
            public final dag a() {
                return cmw.this.d(a);
            }
        }), czj.a) : cyb.e(dagVar, Throwable.class, cnm.b(new czc() { // from class: cmr
            @Override // defpackage.czc
            public final dag a(Object obj) {
                return cmw.this.d(a);
            }
        }), this.f));
        final cmu cmuVar = new cmu(this, a);
        e.aW(new Runnable() { // from class: cms
            @Override // java.lang.Runnable
            public final void run() {
                cmw cmwVar = cmw.this;
                das dasVar = e;
                cmu cmuVar2 = cmuVar;
                try {
                    cmwVar.d.k(hh.o(dasVar));
                    cmuVar2.d(cmwVar.d);
                } catch (Throwable th) {
                    cmuVar2.d(dasVar);
                }
            }
        }, czj.a);
        return cmuVar;
    }

    public final dag d(int i) {
        cmv cmvVar;
        if (a(this.b.get()) > i) {
            return hh.h();
        }
        cmv cmvVar2 = new cmv(i);
        do {
            cmvVar = (cmv) this.c.get();
            if (cmvVar != null && cmvVar.a > i) {
                return hh.h();
            }
        } while (!this.c.compareAndSet(cmvVar, cmvVar2));
        if (a(this.b.get()) > i) {
            cmvVar2.cancel(true);
            this.c.compareAndSet(cmvVar2, null);
            return cmvVar2;
        }
        cmt cmtVar = this.a;
        czb czbVar = cmtVar.a;
        Executor executor = cmtVar.b;
        if (czbVar == null || executor == null) {
            cmvVar2.d(this.d);
        } else {
            cmvVar2.d(hh.m(cnm.a(czbVar), executor));
        }
        return cmvVar2;
    }
}
