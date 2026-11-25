package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ciq implements czc {
    public final /* synthetic */ cir a;
    public final /* synthetic */ List b;
    public final /* synthetic */ int c;
    private final /* synthetic */ int d;

    public /* synthetic */ ciq(cir cirVar, int i, List list, int i2) {
        this.d = i2;
        this.a = cirVar;
        this.c = i;
        this.b = list;
    }

    public /* synthetic */ ciq(cir cirVar, List list, int i, int i2) {
        this.d = i2;
        this.a = cirVar;
        this.b = list;
        this.c = i;
    }

    @Override // defpackage.czc
    public final dag a(Object obj) {
        switch (this.d) {
            case 0:
                final cir cirVar = this.a;
                final List list = this.b;
                final int i = this.c;
                final der derVar = (der) obj;
                return hh.e(list).b(cnm.a(new czb() { // from class: cio
                    @Override // defpackage.czb
                    public final dag a() {
                        cir cirVar2 = cir.this;
                        der derVar2 = derVar;
                        int i2 = i;
                        List list2 = list;
                        dag j = hh.j(derVar2);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if (((Boolean) hh.o((Future) list2.get(i3))).booleanValue()) {
                                final cin cinVar = (cin) cirVar2.a.get(i3);
                                j = cyt.p(j, cnm.b(new czc() { // from class: cip
                                    @Override // defpackage.czc
                                    public final dag a(Object obj2) {
                                        return cin.this.c();
                                    }
                                }), czj.a);
                            }
                        }
                        return j;
                    }
                }), cirVar.b);
            default:
                cir cirVar2 = this.a;
                int i2 = this.c;
                List list2 = this.b;
                ArrayList arrayList = new ArrayList(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    if (((Boolean) hh.o((Future) list2.get(i3))).booleanValue()) {
                        arrayList.add(((cin) cirVar2.a.get(i3)).a());
                    }
                }
                return hh.g(arrayList).a(hh.r(), czj.a);
        }
    }
}
