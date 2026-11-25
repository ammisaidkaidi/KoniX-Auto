package defpackage;

import android.content.Context;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cfz implements czc {
    public final /* synthetic */ cfn a;
    public final /* synthetic */ String b;
    public final /* synthetic */ cdz c;
    private final /* synthetic */ int d;

    public /* synthetic */ cfz(cdz cdzVar, cfn cfnVar, String str, int i) {
        this.d = i;
        this.c = cdzVar;
        this.a = cfnVar;
        this.b = str;
    }

    public /* synthetic */ cfz(cfn cfnVar, String str, cdz cdzVar, int i) {
        this.d = i;
        this.a = cfnVar;
        this.b = str;
        this.c = cdzVar;
    }

    @Override // defpackage.czc
    public final dag a(Object obj) {
        String str;
        switch (this.d) {
            case 0:
                final cfn cfnVar = this.a;
                String str2 = this.b;
                final cdz cdzVar = this.c;
                List<String> list = (List) obj;
                if (!cfnVar.d) {
                    list = cqh.q("");
                }
                cqc j = cqh.j();
                for (final String str3 : list) {
                    if (!cgf.c.containsKey(cod.a(str2, str3))) {
                        if (cfnVar.c) {
                            Context context = cdzVar.h;
                            str = cfx.a(context).getString(cfnVar.a, "");
                        } else {
                            str = str3;
                        }
                        final dag d = cgv.d(cdzVar, cfnVar.a, str);
                        j.g(cyt.p(cyt.p(dab.q(d), new cfz(cdzVar, cfnVar, str3, 1), cdzVar.d()), new czc() { // from class: cfy
                            @Override // defpackage.czc
                            public final dag a(Object obj2) {
                                final cdz cdzVar2 = cdz.this;
                                dag dagVar = d;
                                final cfn cfnVar2 = cfnVar;
                                final String str4 = str3;
                                final cgw cgwVar = (cgw) hh.o(dagVar);
                                if (cgwVar.b.isEmpty()) {
                                    return dad.a;
                                }
                                return cyt.p(dab.q(cyt.o(dab.q(cfr.a(cdzVar2).a()), new cfp(cfnVar2.a, 0), cdzVar2.d())), new czc() { // from class: cga
                                    @Override // defpackage.czc
                                    public final dag a(Object obj3) {
                                        String str5 = str4;
                                        return !((String) obj3).equals(str5) ? dad.a : cgf.c.containsKey(cod.a(cfnVar2.a, str5)) ? dad.a : cdzVar2.b().a(cgwVar.b);
                                    }
                                }, cdzVar2.d());
                            }
                        }, cdzVar.d()));
                    }
                }
                return hh.e(j.f()).a(cge.c, cdzVar.d());
            default:
                cdz cdzVar2 = this.c;
                cfn cfnVar2 = this.a;
                return cgv.e(cdzVar2, cfnVar2.a, this.b, (cgw) obj, cfnVar2.b, cfnVar2.e);
        }
    }
}
