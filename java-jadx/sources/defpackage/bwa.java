package defpackage;

import android.os.health.HealthStats;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bwa extends bvz {
    public static final bwa a = new bwa();

    private bwa() {
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der a(String str, Object obj) {
        HealthStats healthStats = (HealthStats) obj;
        ddf n = doq.e.n();
        int d = (int) bvs.d(healthStats, 50001);
        if (d != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            doq doqVar = (doq) n.b;
            doqVar.a |= 1;
            doqVar.b = d;
        }
        int d2 = (int) bvs.d(healthStats, 50002);
        if (d2 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            doq doqVar2 = (doq) n.b;
            doqVar2.a |= 2;
            doqVar2.c = d2;
        }
        if (str != null) {
            dom g = bvs.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            doq doqVar3 = (doq) n.b;
            g.getClass();
            doqVar3.d = g;
            doqVar3.a |= 4;
        }
        doq doqVar4 = (doq) n.h();
        if (bvs.n(doqVar4)) {
            return null;
        }
        return doqVar4;
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der b(der derVar, der derVar2) {
        int i;
        int i2;
        doq doqVar = (doq) derVar;
        doq doqVar2 = (doq) derVar2;
        if (doqVar == null || doqVar2 == null) {
            return doqVar;
        }
        ddf n = doq.e.n();
        if ((doqVar.a & 1) != 0 && (i2 = doqVar.b - doqVar2.b) != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            doq doqVar3 = (doq) n.b;
            doqVar3.a |= 1;
            doqVar3.b = i2;
        }
        if ((doqVar.a & 2) != 0 && (i = doqVar.c - doqVar2.c) != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            doq doqVar4 = (doq) n.b;
            doqVar4.a |= 2;
            doqVar4.c = i;
        }
        dom domVar = doqVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        doq doqVar5 = (doq) n.b;
        domVar.getClass();
        doqVar5.d = domVar;
        doqVar5.a |= 4;
        doq doqVar6 = (doq) n.h();
        if (bvs.n(doqVar6)) {
            return null;
        }
        return doqVar6;
    }

    @Override // defpackage.bvz
    public final /* bridge */ /* synthetic */ String c(der derVar) {
        dom domVar = ((doq) derVar).d;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
