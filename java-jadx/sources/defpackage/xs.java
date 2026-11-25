package defpackage;

import android.content.Context;
import android.os.Process;
import android.os.health.HealthStats;
import android.view.View;
import com.google.android.embedded.projection.R;
import java.util.Collections;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class xs {
    public static int a(Context context, int i) {
        return context.getColor(i);
    }

    public static void b(View view, aak aakVar) {
        view.setTag(R.id.view_tree_view_model_store_owner, aakVar);
    }

    public static final bwc c(Long l, Long l2, HealthStats healthStats, doi doiVar, bvn bvnVar) {
        bwf bwfVar = bvnVar.a;
        ddf n = dos.ar.n();
        long d = bvs.d(healthStats, 10001);
        if (d != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar = (dos) n.b;
            dosVar.a |= 1;
            dosVar.c = d;
        }
        long d2 = bvs.d(healthStats, 10002);
        if (d2 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar2 = (dos) n.b;
            dosVar2.a |= 2;
            dosVar2.d = d2;
        }
        long d3 = bvs.d(healthStats, 10003);
        if (d3 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar3 = (dos) n.b;
            dosVar3.a |= 4;
            dosVar3.e = d3;
        }
        long d4 = bvs.d(healthStats, 10004);
        if (d4 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar4 = (dos) n.b;
            dosVar4.a |= 8;
            dosVar4.f = d4;
        }
        n.Q(bvs.e(healthStats, 10005));
        n.R(bvs.e(healthStats, 10006));
        n.S(bvs.e(healthStats, 10007));
        n.P(bvs.e(healthStats, 10008));
        n.O(bvs.e(healthStats, 10009));
        n.K(bvs.e(healthStats, 10010));
        dor h = bvs.h(healthStats, 10011);
        if (h != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar5 = (dos) n.b;
            dosVar5.m = h;
            dosVar5.a |= 16;
        }
        n.L(bvs.e(healthStats, 10012));
        n.N(bvy.a.d(bvs.f(healthStats, 10014)));
        n.M(bvx.a.d(bvs.f(healthStats, 10015)));
        long d5 = bvs.d(healthStats, 10016);
        if (d5 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar6 = (dos) n.b;
            dosVar6.a |= 32;
            dosVar6.v = d5;
        }
        long d6 = bvs.d(healthStats, 10017);
        if (d6 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar7 = (dos) n.b;
            dosVar7.a |= 64;
            dosVar7.w = d6;
        }
        long d7 = bvs.d(healthStats, 10018);
        if (d7 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar8 = (dos) n.b;
            dosVar8.a |= 128;
            dosVar8.x = d7;
        }
        long d8 = bvs.d(healthStats, 10019);
        if (d8 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar9 = (dos) n.b;
            dosVar9.a |= 256;
            dosVar9.y = d8;
        }
        long d9 = bvs.d(healthStats, 10020);
        if (d9 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar10 = (dos) n.b;
            dosVar10.a |= 512;
            dosVar10.z = d9;
        }
        long d10 = bvs.d(healthStats, 10021);
        if (d10 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar11 = (dos) n.b;
            dosVar11.a |= 1024;
            dosVar11.A = d10;
        }
        long d11 = bvs.d(healthStats, 10022);
        if (d11 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar12 = (dos) n.b;
            dosVar12.a |= 2048;
            dosVar12.B = d11;
        }
        long d12 = bvs.d(healthStats, 10023);
        if (d12 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar13 = (dos) n.b;
            dosVar13.a |= 4096;
            dosVar13.C = d12;
        }
        long d13 = bvs.d(healthStats, 10024);
        if (d13 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar14 = (dos) n.b;
            dosVar14.a |= 8192;
            dosVar14.D = d13;
        }
        long d14 = bvs.d(healthStats, 10025);
        if (d14 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar15 = (dos) n.b;
            dosVar15.a |= 16384;
            dosVar15.E = d14;
        }
        long d15 = bvs.d(healthStats, 10026);
        if (d15 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar16 = (dos) n.b;
            dosVar16.a |= 32768;
            dosVar16.F = d15;
        }
        long d16 = bvs.d(healthStats, 10027);
        if (d16 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar17 = (dos) n.b;
            dosVar17.a |= 65536;
            dosVar17.G = d16;
        }
        long d17 = bvs.d(healthStats, 10028);
        if (d17 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar18 = (dos) n.b;
            dosVar18.a |= 131072;
            dosVar18.H = d17;
        }
        long d18 = bvs.d(healthStats, 10029);
        if (d18 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar19 = (dos) n.b;
            dosVar19.a |= 262144;
            dosVar19.I = d18;
        }
        dor h2 = bvs.h(healthStats, 10030);
        if (h2 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar20 = (dos) n.b;
            dosVar20.J = h2;
            dosVar20.a |= 524288;
        }
        long d19 = bvs.d(healthStats, 10031);
        if (d19 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar21 = (dos) n.b;
            dosVar21.a |= 1048576;
            dosVar21.K = d19;
        }
        dor h3 = bvs.h(healthStats, 10032);
        if (h3 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar22 = (dos) n.b;
            dosVar22.L = h3;
            dosVar22.a |= 2097152;
        }
        dor h4 = bvs.h(healthStats, 10033);
        if (h4 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar23 = (dos) n.b;
            dosVar23.M = h4;
            dosVar23.a |= 4194304;
        }
        dor h5 = bvs.h(healthStats, 10034);
        if (h5 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar24 = (dos) n.b;
            dosVar24.N = h5;
            dosVar24.a |= 8388608;
        }
        dor h6 = bvs.h(healthStats, 10035);
        if (h6 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar25 = (dos) n.b;
            dosVar25.O = h6;
            dosVar25.a |= 16777216;
        }
        dor h7 = bvs.h(healthStats, 10036);
        if (h7 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar26 = (dos) n.b;
            dosVar26.P = h7;
            dosVar26.a |= 33554432;
        }
        dor h8 = bvs.h(healthStats, 10037);
        if (h8 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar27 = (dos) n.b;
            dosVar27.Q = h8;
            dosVar27.a |= 67108864;
        }
        dor h9 = bvs.h(healthStats, 10038);
        if (h9 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar28 = (dos) n.b;
            dosVar28.R = h9;
            dosVar28.a |= 134217728;
        }
        dor h10 = bvs.h(healthStats, 10039);
        if (h10 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar29 = (dos) n.b;
            dosVar29.S = h10;
            dosVar29.a |= 268435456;
        }
        dor h11 = bvs.h(healthStats, 10040);
        if (h11 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar30 = (dos) n.b;
            dosVar30.T = h11;
            dosVar30.a |= 536870912;
        }
        dor h12 = bvs.h(healthStats, 10041);
        if (h12 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar31 = (dos) n.b;
            dosVar31.U = h12;
            dosVar31.a |= 1073741824;
        }
        dor h13 = bvs.h(healthStats, 10042);
        if (h13 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar32 = (dos) n.b;
            dosVar32.V = h13;
            dosVar32.a |= Integer.MIN_VALUE;
        }
        dor h14 = bvs.h(healthStats, 10043);
        if (h14 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar33 = (dos) n.b;
            dosVar33.W = h14;
            dosVar33.b |= 1;
        }
        dor h15 = bvs.h(healthStats, 10044);
        if (h15 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar34 = (dos) n.b;
            dosVar34.X = h15;
            dosVar34.b |= 2;
        }
        long d20 = bvs.d(healthStats, 10045);
        if (d20 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar35 = (dos) n.b;
            dosVar35.b |= 4;
            dosVar35.Y = d20;
        }
        long d21 = bvs.d(healthStats, 10046);
        if (d21 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar36 = (dos) n.b;
            dosVar36.b |= 8;
            dosVar36.Z = d21;
        }
        long d22 = bvs.d(healthStats, 10047);
        if (d22 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar37 = (dos) n.b;
            dosVar37.b |= 16;
            dosVar37.aa = d22;
        }
        long d23 = bvs.d(healthStats, 10048);
        if (d23 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar38 = (dos) n.b;
            dosVar38.b |= 32;
            dosVar38.ab = d23;
        }
        long d24 = bvs.d(healthStats, 10049);
        if (d24 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar39 = (dos) n.b;
            dosVar39.b |= 64;
            dosVar39.ac = d24;
        }
        long d25 = bvs.d(healthStats, 10050);
        if (d25 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar40 = (dos) n.b;
            dosVar40.b |= 128;
            dosVar40.ad = d25;
        }
        long d26 = bvs.d(healthStats, 10051);
        if (d26 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar41 = (dos) n.b;
            dosVar41.b |= 256;
            dosVar41.ae = d26;
        }
        long d27 = bvs.d(healthStats, 10052);
        if (d27 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar42 = (dos) n.b;
            dosVar42.b |= 512;
            dosVar42.af = d27;
        }
        long d28 = bvs.d(healthStats, 10053);
        if (d28 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar43 = (dos) n.b;
            dosVar43.b |= 1024;
            dosVar43.ag = d28;
        }
        long d29 = bvs.d(healthStats, 10054);
        if (d29 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar44 = (dos) n.b;
            dosVar44.b |= 2048;
            dosVar44.ah = d29;
        }
        long d30 = bvs.d(healthStats, 10055);
        if (d30 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar45 = (dos) n.b;
            dosVar45.b |= 4096;
            dosVar45.ai = d30;
        }
        long d31 = bvs.d(healthStats, 10056);
        if (d31 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar46 = (dos) n.b;
            dosVar46.b |= 8192;
            dosVar46.aj = d31;
        }
        long d32 = bvs.d(healthStats, 10057);
        if (d32 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar47 = (dos) n.b;
            dosVar47.b |= 16384;
            dosVar47.ak = d32;
        }
        long d33 = bvs.d(healthStats, 10058);
        if (d33 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar48 = (dos) n.b;
            dosVar48.b = 32768 | dosVar48.b;
            dosVar48.al = d33;
        }
        long d34 = bvs.d(healthStats, 10059);
        if (d34 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar49 = (dos) n.b;
            dosVar49.b |= 65536;
            dosVar49.am = d34;
        }
        dor h16 = bvs.h(healthStats, 10061);
        if (h16 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar50 = (dos) n.b;
            dosVar50.an = h16;
            dosVar50.b |= 131072;
        }
        long d35 = bvs.d(healthStats, 10062);
        if (d35 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar51 = (dos) n.b;
            dosVar51.b = 262144 | dosVar51.b;
            dosVar51.ao = d35;
        }
        long d36 = bvs.d(healthStats, 10063);
        if (d36 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar52 = (dos) n.b;
            dosVar52.b |= 524288;
            dosVar52.ap = d36;
        }
        long d37 = bvs.d(healthStats, 10064);
        if (d37 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            dos dosVar53 = (dos) n.b;
            dosVar53.b |= 1048576;
            dosVar53.aq = d37;
        }
        dos dosVar54 = (dos) n.h();
        ddf ddfVar = (ddf) dosVar54.E(5);
        ddfVar.n(dosVar54);
        bvv bvvVar = bwfVar.b;
        Collections.unmodifiableList(((dos) ddfVar.b).g);
        for (int i = 0; i < ((dos) ddfVar.b).g.size(); i++) {
            ddfVar.ac(i, bvvVar.c(1, ddfVar.D(i)));
        }
        Collections.unmodifiableList(((dos) ddfVar.b).h);
        for (int i2 = 0; i2 < ((dos) ddfVar.b).h.size(); i2++) {
            ddfVar.ad(i2, bvvVar.c(1, ddfVar.E(i2)));
        }
        Collections.unmodifiableList(((dos) ddfVar.b).i);
        for (int i3 = 0; i3 < ((dos) ddfVar.b).i.size(); i3++) {
            ddfVar.ae(i3, bvvVar.c(1, ddfVar.F(i3)));
        }
        Collections.unmodifiableList(((dos) ddfVar.b).j);
        for (int i4 = 0; i4 < ((dos) ddfVar.b).j.size(); i4++) {
            ddfVar.ab(i4, bvvVar.c(1, ddfVar.G(i4)));
        }
        Collections.unmodifiableList(((dos) ddfVar.b).k);
        for (int i5 = 0; i5 < ((dos) ddfVar.b).k.size(); i5++) {
            ddfVar.Y(i5, bvvVar.c(2, ddfVar.H(i5)));
        }
        Collections.unmodifiableList(((dos) ddfVar.b).l);
        for (int i6 = 0; i6 < ((dos) ddfVar.b).l.size(); i6++) {
            ddfVar.V(i6, bvvVar.c(3, ddfVar.I(i6)));
        }
        Collections.unmodifiableList(((dos) ddfVar.b).n);
        for (int i7 = 0; i7 < ((dos) ddfVar.b).n.size(); i7++) {
            ddfVar.X(i7, bvvVar.c(5, ddfVar.J(i7)));
        }
        return new bwc((dos) ddfVar.h(), l, l2, 401601347L, Long.valueOf(bvnVar.b != null ? r0.hashCode() : 0L), doiVar, null, null);
    }

    public static dpg d(String str, Context context) {
        ddf n = dpg.f.n();
        long elapsedCpuTime = Process.getElapsedCpuTime();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpg dpgVar = (dpg) n.b;
        dpgVar.a |= 1;
        dpgVar.b = elapsedCpuTime;
        boolean c = bvk.c(context);
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpg dpgVar2 = (dpg) n.b;
        dpgVar2.a |= 2;
        dpgVar2.c = c;
        int activeCount = Thread.activeCount();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpg dpgVar3 = (dpg) n.b;
        int i = dpgVar3.a | 4;
        dpgVar3.a = i;
        dpgVar3.d = activeCount;
        if (str != null) {
            dpgVar3.a = i | 8;
            dpgVar3.e = str;
        }
        return (dpg) n.h();
    }
}
