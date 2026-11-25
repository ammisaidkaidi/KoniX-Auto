package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyj extends cyc {
    @Override // defpackage.cyc
    public final void a(cyo cyoVar, cyo cyoVar2) {
        cyoVar.next = cyoVar2;
    }

    @Override // defpackage.cyc
    public final void b(cyo cyoVar, Thread thread) {
        cyoVar.thread = thread;
    }

    @Override // defpackage.cyc
    public final boolean c(cyp cypVar, cyg cygVar, cyg cygVar2) {
        synchronized (cypVar) {
            if (cypVar.listeners != cygVar) {
                return false;
            }
            cypVar.listeners = cygVar2;
            return true;
        }
    }

    @Override // defpackage.cyc
    public final boolean d(cyp cypVar, Object obj, Object obj2) {
        synchronized (cypVar) {
            if (cypVar.value != obj) {
                return false;
            }
            cypVar.value = obj2;
            return true;
        }
    }

    @Override // defpackage.cyc
    public final boolean e(cyp cypVar, cyo cyoVar, cyo cyoVar2) {
        synchronized (cypVar) {
            if (cypVar.waiters != cyoVar) {
                return false;
            }
            cypVar.waiters = cyoVar2;
            return true;
        }
    }
}
