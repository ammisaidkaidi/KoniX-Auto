package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ama extends alv {
    final AtomicReferenceFieldUpdater a;
    final AtomicReferenceFieldUpdater b;
    final AtomicReferenceFieldUpdater c;
    final AtomicReferenceFieldUpdater d;
    final AtomicReferenceFieldUpdater e;

    public ama(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.alv
    public final void a(amd amdVar, amd amdVar2) {
        this.b.lazySet(amdVar, amdVar2);
    }

    @Override // defpackage.alv
    public final void b(amd amdVar, Thread thread) {
        this.a.lazySet(amdVar, thread);
    }

    @Override // defpackage.alv
    public final boolean c(ame ameVar, alz alzVar, alz alzVar2) {
        return this.d.compareAndSet(ameVar, alzVar, alzVar2);
    }

    @Override // defpackage.alv
    public final boolean d(ame ameVar, Object obj, Object obj2) {
        return this.e.compareAndSet(ameVar, obj, obj2);
    }

    @Override // defpackage.alv
    public final boolean e(ame ameVar, amd amdVar, amd amdVar2) {
        return this.c.compareAndSet(ameVar, amdVar, amdVar2);
    }
}
