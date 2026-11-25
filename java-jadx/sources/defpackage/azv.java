package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class azv implements czv {
    final /* synthetic */ azy a;

    public azv(azy azyVar) {
        this.a = azyVar;
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        if (this.a.i.h == null) {
            Iterator it = this.a.g.values().iterator();
            while (it.hasNext()) {
                ((baw) it.next()).g(th);
            }
        }
    }

    @Override // defpackage.czv
    public final void b(Object obj) {
    }
}
