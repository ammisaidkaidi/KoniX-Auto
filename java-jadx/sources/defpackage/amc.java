package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class amc extends alv {
    @Override // defpackage.alv
    public final void a(amd amdVar, amd amdVar2) {
        amdVar.c = amdVar2;
    }

    @Override // defpackage.alv
    public final void b(amd amdVar, Thread thread) {
        amdVar.b = thread;
    }

    @Override // defpackage.alv
    public final boolean c(ame ameVar, alz alzVar, alz alzVar2) {
        synchronized (ameVar) {
            if (ameVar.e != alzVar) {
                return false;
            }
            ameVar.e = alzVar2;
            return true;
        }
    }

    @Override // defpackage.alv
    public final boolean d(ame ameVar, Object obj, Object obj2) {
        synchronized (ameVar) {
            if (ameVar.d != obj) {
                return false;
            }
            ameVar.d = obj2;
            return true;
        }
    }

    @Override // defpackage.alv
    public final boolean e(ame ameVar, amd amdVar, amd amdVar2) {
        synchronized (ameVar) {
            if (ameVar.f != amdVar) {
                return false;
            }
            ameVar.f = amdVar2;
            return true;
        }
    }
}
