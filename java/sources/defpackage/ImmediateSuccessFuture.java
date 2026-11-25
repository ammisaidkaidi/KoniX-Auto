package defpackage;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmediateSuccessFuture extends ImmediateFutureBase {
    final AtomicReferenceFieldUpdater a;
    final AtomicIntegerFieldUpdater b;

    public ImmediateSuccessFuture(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicIntegerFieldUpdater;
    }

    @Override // defpackage.ImmediateFutureBase
    public final int a(AggregateFutureImpl czaVar) {
        return this.b.decrementAndGet(czaVar);
    }

    @Override // defpackage.ImmediateFutureBase
    public final void b(AggregateFutureImpl czaVar, Set set) {
        this.a.compareAndSet(czaVar, null, set);
    }
}
