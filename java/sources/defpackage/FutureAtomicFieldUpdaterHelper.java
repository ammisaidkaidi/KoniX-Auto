package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureAtomicFieldUpdaterHelper extends FutureAtomicHelperBase {
    final AtomicReferenceFieldUpdater a;
    final AtomicReferenceFieldUpdater b;
    final AtomicReferenceFieldUpdater c;
    final AtomicReferenceFieldUpdater d;
    final AtomicReferenceFieldUpdater e;

    public FutureAtomicFieldUpdaterHelper(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final void a(FutureWaiterNode amdVar, FutureWaiterNode amdVar2) {
        this.b.lazySet(amdVar, amdVar2);
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final void b(FutureWaiterNode amdVar, Thread thread) {
        this.a.lazySet(amdVar, thread);
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final boolean c(GuavaAbstractFuture_ame ameVar, FutureListenerNode alzVar, FutureListenerNode alzVar2) {
        return this.d.compareAndSet(ameVar, alzVar, alzVar2);
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final boolean d(GuavaAbstractFuture_ame ameVar, Object obj, Object obj2) {
        return this.e.compareAndSet(ameVar, obj, obj2);
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final boolean e(GuavaAbstractFuture_ame ameVar, FutureWaiterNode amdVar, FutureWaiterNode amdVar2) {
        return this.c.compareAndSet(ameVar, amdVar, amdVar2);
    }
}
