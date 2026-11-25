package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyh extends cyc {
    final AtomicReferenceFieldUpdater a;
    final AtomicReferenceFieldUpdater b;
    final AtomicReferenceFieldUpdater c;
    final AtomicReferenceFieldUpdater d;
    final AtomicReferenceFieldUpdater e;

    public cyh(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.cyc
    public final void a(cyo cyoVar, cyo cyoVar2) {
        this.b.lazySet(cyoVar, cyoVar2);
    }

    @Override // defpackage.cyc
    public final void b(cyo cyoVar, Thread thread) {
        this.a.lazySet(cyoVar, thread);
    }

    @Override // defpackage.cyc
    public final boolean c(cyp cypVar, cyg cygVar, cyg cygVar2) {
        return this.d.compareAndSet(cypVar, cygVar, cygVar2);
    }

    @Override // defpackage.cyc
    public final boolean d(cyp cypVar, Object obj, Object obj2) {
        return this.e.compareAndSet(cypVar, obj, obj2);
    }

    @Override // defpackage.cyc
    public final boolean e(cyp cypVar, cyo cyoVar, cyo cyoVar2) {
        return this.c.compareAndSet(cypVar, cyoVar, cyoVar2);
    }
}
