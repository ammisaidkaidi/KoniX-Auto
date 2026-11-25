package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AtomicReferenceAtomicHelper extends FutureAtomicHelper {
    @Override // defpackage.FutureAtomicHelper
    public final void a(FutureUnsafeOffsets cyoVar, FutureUnsafeOffsets cyoVar2) {
        cyoVar.next = cyoVar2;
    }

    @Override // defpackage.FutureAtomicHelper
    public final void b(FutureUnsafeOffsets cyoVar, Thread thread) {
        cyoVar.thread = thread;
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean c(GuavaAbstractFuture_cyp cypVar, FutureStateHolder cygVar, FutureStateHolder cygVar2) {
        synchronized (cypVar) {
            if (cypVar.listeners != cygVar) {
                return false;
            }
            cypVar.listeners = cygVar2;
            return true;
        }
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean d(GuavaAbstractFuture_cyp cypVar, Object obj, Object obj2) {
        synchronized (cypVar) {
            if (cypVar.value != obj) {
                return false;
            }
            cypVar.value = obj2;
            return true;
        }
    }

    @Override // defpackage.FutureAtomicHelper
    public final boolean e(GuavaAbstractFuture_cyp cypVar, FutureUnsafeOffsets cyoVar, FutureUnsafeOffsets cyoVar2) {
        synchronized (cypVar) {
            if (cypVar.waiters != cyoVar) {
                return false;
            }
            cypVar.waiters = cyoVar2;
            return true;
        }
    }
}
