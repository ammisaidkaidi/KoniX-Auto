package defpackage;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyy extends cyx {
    final AtomicReferenceFieldUpdater a;
    final AtomicIntegerFieldUpdater b;

    public cyy(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicIntegerFieldUpdater;
    }

    @Override // defpackage.cyx
    public final int a(cza czaVar) {
        return this.b.decrementAndGet(czaVar);
    }

    @Override // defpackage.cyx
    public final void b(cza czaVar, Set set) {
        this.a.compareAndSet(czaVar, null, set);
    }
}
