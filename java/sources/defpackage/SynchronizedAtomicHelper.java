package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SynchronizedAtomicHelper extends FutureAtomicHelper {
    final AtomicReferenceFieldUpdater a;
    final AtomicReferenceFieldUpdater b;
    final AtomicReferenceFieldUpdater c;
    final AtomicReferenceFieldUpdater d;
    final AtomicReferenceFieldUpdater e;

    public SynchronizedAtomicHelper(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.FutureAtomicHelper
    public final void a(FutureUnsafeOffsets cyoVar, FutureUnsafeOffsets cyoVar2) {
        this.b.lazySet(cyoVar, cyoVar2);
    }

    @Override // defpackage.FutureAtomicHelper
    public final void b(FutureUnsafeOffsets cyoVar, Thread thread) {
        this.a.lazySet(cyoVar, thread);
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean c(GuavaAbstractFuture_cyp cypVar, FutureStateHolder cygVar, FutureStateHolder cygVar2) {
        return this.d.compareAndSet(cypVar, cygVar, cygVar2);
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean d(GuavaAbstractFuture_cyp cypVar, Object obj, Object obj2) {
        return this.e.compareAndSet(cypVar, obj, obj2);
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean e(GuavaAbstractFuture_cyp cypVar, FutureUnsafeOffsets cyoVar, FutureUnsafeOffsets cyoVar2) {
        return this.c.compareAndSet(cypVar, cyoVar, cyoVar2);
    }
}
