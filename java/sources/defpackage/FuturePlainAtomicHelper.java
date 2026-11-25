package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FuturePlainAtomicHelper extends FutureAtomicHelperBase {
    @Override // defpackage.FutureAtomicHelperBase
    public final void a(FutureWaiterNode amdVar, FutureWaiterNode amdVar2) {
        amdVar.c = amdVar2;
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final void b(FutureWaiterNode amdVar, Thread thread) {
        amdVar.b = thread;
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final boolean c(GuavaAbstractFuture_ame ameVar, FutureListenerNode alzVar, FutureListenerNode alzVar2) {
        synchronized (ameVar) {
            if (ameVar.e != alzVar) {
                return false;
            }
            ameVar.e = alzVar2;
            return true;
        }
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final boolean d(GuavaAbstractFuture_ame ameVar, Object obj, Object obj2) {
        synchronized (ameVar) {
            if (ameVar.d != obj) {
                return false;
            }
            ameVar.d = obj2;
            return true;
        }
    }

    @Override // defpackage.FutureAtomicHelperBase
    public final boolean e(GuavaAbstractFuture_ame ameVar, FutureWaiterNode amdVar, FutureWaiterNode amdVar2) {
        synchronized (ameVar) {
            if (ameVar.f != amdVar) {
                return false;
            }
            ameVar.f = amdVar2;
            return true;
        }
    }
}
