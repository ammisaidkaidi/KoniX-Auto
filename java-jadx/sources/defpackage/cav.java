package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cav extends car implements bwq {
    private static final Callable a = cge.b;
    private final cau b;
    private final cbc c;

    public cav(cau cauVar, coc cocVar) {
        this.b = cauVar;
        this.c = (cbc) ((dny) ((cof) cocVar).a).a();
    }

    @Override // defpackage.car
    public final caq a(btx btxVar) {
        caq a2 = this.b.a(btxVar);
        String str = btxVar.a;
        if (!caq.b(a2) && this.c.b(str)) {
            a2.d = true;
        }
        return a2;
    }

    @Override // defpackage.car
    public final dag b(btx btxVar, int i) {
        dag dagVar;
        caq caqVar = (caq) this.b.c.get(btxVar.a);
        dag[] dagVarArr = new dag[2];
        dagVarArr[0] = this.b.b(btxVar, i);
        String str = btxVar.a;
        if (caqVar == null || caq.b(caqVar)) {
            dagVar = dad.a;
        } else if (caqVar.d) {
            dagVar = this.c.c(str);
        } else {
            this.c.a(str, caqVar.b, caqVar.a());
            dagVar = dad.a;
        }
        dagVarArr[1] = dagVar;
        return new czz(true, cqh.o(dagVarArr)).a(a, czj.a);
    }

    @Override // defpackage.bwq
    public final /* synthetic */ void u() {
    }
}
