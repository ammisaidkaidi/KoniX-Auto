package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cir implements czc {
    public final List a;
    public final Executor b;

    public cir(List list, Executor executor) {
        this.a = list;
        this.b = executor;
    }

    @Override // defpackage.czc
    public final /* bridge */ /* synthetic */ dag a(Object obj) {
        final cjo cjoVar = (cjo) obj;
        int i = ((crz) this.a).c;
        ArrayList arrayList = new ArrayList(i);
        csu it = ((cqh) this.a).iterator();
        while (it.hasNext()) {
            arrayList.add(((cin) it.next()).b());
        }
        final czc b = cnm.b(new ciq(this, arrayList, i, 0));
        final czj czjVar = czj.a;
        cjoVar.a.e.a();
        return cyt.p(cyt.p(hh.k(cjoVar.a.c.c()), cnm.b(new czc() { // from class: cjn
            @Override // defpackage.czc
            public final dag a(Object obj2) {
                cjo cjoVar2 = cjo.this;
                return cjoVar2.a.b.d(b, czjVar);
            }
        }), czj.a), cnm.b(new ciq(this, i, arrayList, 1)), czj.a);
    }
}
