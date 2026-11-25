package defpackage;

import android.os.health.HealthStats;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvy extends bvz {
    public static final bvy a = new bvy();

    private bvy() {
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der a(String str, Object obj) {
        HealthStats healthStats = (HealthStats) obj;
        ddf n = dop.i.n();
        long d = bvs.d(healthStats, 30001);
        if (d != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar = (dop) n.b;
            dopVar.a |= 1;
            dopVar.b = d;
        }
        long d2 = bvs.d(healthStats, 30002);
        if (d2 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar2 = (dop) n.b;
            dopVar2.a |= 2;
            dopVar2.c = d2;
        }
        long d3 = bvs.d(healthStats, 30003);
        if (d3 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar3 = (dop) n.b;
            dopVar3.a |= 4;
            dopVar3.d = d3;
        }
        long d4 = bvs.d(healthStats, 30004);
        if (d4 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar4 = (dop) n.b;
            dopVar4.a |= 8;
            dopVar4.e = d4;
        }
        long d5 = bvs.d(healthStats, 30005);
        if (d5 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar5 = (dop) n.b;
            dopVar5.a |= 16;
            dopVar5.f = d5;
        }
        long d6 = bvs.d(healthStats, 30006);
        if (d6 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar6 = (dop) n.b;
            dopVar6.a |= 32;
            dopVar6.g = d6;
        }
        if (str != null) {
            dom g = bvs.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            dop dopVar7 = (dop) n.b;
            g.getClass();
            dopVar7.h = g;
            dopVar7.a |= 64;
        }
        dop dopVar8 = (dop) n.h();
        if (bvs.m(dopVar8)) {
            return null;
        }
        return dopVar8;
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der b(der derVar, der derVar2) {
        dop dopVar = (dop) derVar;
        dop dopVar2 = (dop) derVar2;
        if (dopVar == null || dopVar2 == null) {
            return dopVar;
        }
        ddf n = dop.i.n();
        if ((dopVar.a & 1) != 0) {
            long j = dopVar.b - dopVar2.b;
            if (j != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dop dopVar3 = (dop) n.b;
                dopVar3.a |= 1;
                dopVar3.b = j;
            }
        }
        if ((dopVar.a & 2) != 0) {
            long j2 = dopVar.c - dopVar2.c;
            if (j2 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dop dopVar4 = (dop) n.b;
                dopVar4.a |= 2;
                dopVar4.c = j2;
            }
        }
        if ((dopVar.a & 4) != 0) {
            long j3 = dopVar.d - dopVar2.d;
            if (j3 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dop dopVar5 = (dop) n.b;
                dopVar5.a |= 4;
                dopVar5.d = j3;
            }
        }
        if ((dopVar.a & 8) != 0) {
            long j4 = dopVar.e - dopVar2.e;
            if (j4 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dop dopVar6 = (dop) n.b;
                dopVar6.a |= 8;
                dopVar6.e = j4;
            }
        }
        if ((dopVar.a & 16) != 0) {
            long j5 = dopVar.f - dopVar2.f;
            if (j5 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dop dopVar7 = (dop) n.b;
                dopVar7.a |= 16;
                dopVar7.f = j5;
            }
        }
        if ((dopVar.a & 32) != 0) {
            long j6 = dopVar.g - dopVar2.g;
            if (j6 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dop dopVar8 = (dop) n.b;
                dopVar8.a |= 32;
                dopVar8.g = j6;
            }
        }
        dom domVar = dopVar.h;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        dop dopVar9 = (dop) n.b;
        domVar.getClass();
        dopVar9.h = domVar;
        dopVar9.a |= 64;
        dop dopVar10 = (dop) n.h();
        if (bvs.m(dopVar10)) {
            return null;
        }
        return dopVar10;
    }

    @Override // defpackage.bvz
    public final /* bridge */ /* synthetic */ String c(der derVar) {
        dom domVar = ((dop) derVar).h;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
