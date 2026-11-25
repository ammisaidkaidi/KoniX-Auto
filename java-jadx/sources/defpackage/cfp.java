package defpackage;

import java.util.Collections;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cfp implements cny {
    public final /* synthetic */ String a;
    private final /* synthetic */ int b;

    public /* synthetic */ cfp(String str, int i) {
        this.b = i;
        this.a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cny
    public final Object a(Object obj) {
        switch (this.b) {
            case 0:
                String str = this.a;
                cej cejVar = cfr.a;
                cfb cfbVar = cfb.d;
                str.getClass();
                dem demVar = ((cff) obj).a;
                if (demVar.containsKey(str)) {
                    cfbVar = (cfb) demVar.get(str);
                }
                return cfbVar.c;
            case 1:
                String str2 = this.a;
                cej cejVar2 = cfr.a;
                cfb cfbVar2 = cfb.d;
                dem demVar2 = ((cff) obj).a;
                if (demVar2.containsKey(str2)) {
                    cfbVar2 = (cfb) demVar2.get(str2);
                }
                return cfbVar2.b;
            case 2:
                String str3 = this.a;
                cej cejVar3 = cfr.a;
                ddf n = cff.b.n();
                for (Map.Entry entry : Collections.unmodifiableMap(((cff) obj).a).entrySet()) {
                    cfb cfbVar3 = (cfb) entry.getValue();
                    ddf n2 = cfb.d.n();
                    if (!cfbVar3.c.equals(str3)) {
                        String str4 = cfbVar3.c;
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        cfb cfbVar4 = (cfb) n2.b;
                        str4.getClass();
                        cfbVar4.a |= 1;
                        cfbVar4.c = str4;
                    }
                    for (String str5 : cfbVar3.b) {
                        if (!str5.equals(str3)) {
                            n2.q(str5);
                        }
                    }
                    n.r((String) entry.getKey(), (cfb) n2.h());
                }
                return (cff) n.h();
            default:
                String str6 = this.a;
                cff cffVar = (cff) obj;
                cej cejVar4 = cfr.a;
                ddf ddfVar = (ddf) cffVar.E(5);
                ddfVar.n(cffVar);
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                cff cffVar2 = (cff) ddfVar.b;
                cff cffVar3 = cff.b;
                cffVar2.b().remove(str6);
                return (cff) ddfVar.h();
        }
    }
}
