package defpackage;

import android.os.health.HealthStats;
import java.util.Collections;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvx extends bvz {
    public static final bvx a = new bvx();

    private bvx() {
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der a(String str, Object obj) {
        HealthStats healthStats = (HealthStats) obj;
        ddf n = don.e.n();
        n.B(bwa.a.d(bvs.f(healthStats, 40001)));
        n.C(bvw.a.d((healthStats == null || !healthStats.hasMeasurements(40002)) ? Collections.emptyMap() : healthStats.getMeasurements(40002)));
        if (str != null) {
            dom g = bvs.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            don donVar = (don) n.b;
            g.getClass();
            donVar.d = g;
            donVar.a |= 1;
        }
        don donVar2 = (don) n.h();
        if (bvs.l(donVar2)) {
            return null;
        }
        return donVar2;
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der b(der derVar, der derVar2) {
        don donVar = (don) derVar;
        don donVar2 = (don) derVar2;
        if (donVar == null || donVar2 == null) {
            return donVar;
        }
        ddf n = don.e.n();
        n.B(bwa.a.e(donVar.b, donVar2.b));
        n.C(bvw.a.e(donVar.c, donVar2.c));
        dom domVar = donVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        don donVar3 = (don) n.b;
        domVar.getClass();
        donVar3.d = domVar;
        donVar3.a |= 1;
        don donVar4 = (don) n.h();
        if (bvs.l(donVar4)) {
            return null;
        }
        return donVar4;
    }

    @Override // defpackage.bvz
    public final /* bridge */ /* synthetic */ String c(der derVar) {
        dom domVar = ((don) derVar).d;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
