package defpackage;

import android.content.Context;
import android.os.Process;
import android.os.health.HealthStats;
import android.view.View;
import com.google.android.embedded.projection.R;
import java.util.Collections;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetricTransmitter {
    public static int a(Context context, int i) {
        return context.getColor(NavInstructionTypeEnum);
    }

    public static void b(View view, ViewModelStoreOwner aakVar) {
        view.setTag(R.id.view_tree_view_model_store_owner, aakVar);
    }

    public static final MetricSnapshotRecord c(Long l, Long l2, HealthStats healthStats, PrimesLifecycleEventEnum doiVar, PrimesRuntimeContext bvnVar) {
        PrimesAppContextHolder bwfVar = bvnVar.a;
        ProtoMsgHoldingMessageAndBool n = dos.ar.n();
        long d = PrimesMetricExtensionUtils.d(healthStats, 10001);
        if (ProtoMsgIntStringInt != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) n.b;
            dosVar.a |= 1;
            dosVar.c = d;
        }
        long d2 = PrimesMetricExtensionUtils.d(healthStats, 10002);
        if (d2 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar2 = (ProtoMegaConfigMessage) n.b;
            dosVar2.a |= 2;
            dosVar2.d = d2;
        }
        long d3 = PrimesMetricExtensionUtils.d(healthStats, 10003);
        if (d3 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar3 = (ProtoMegaConfigMessage) n.b;
            dosVar3.a |= 4;
            dosVar3.e = d3;
        }
        long d4 = PrimesMetricExtensionUtils.d(healthStats, 10004);
        if (d4 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar4 = (ProtoMegaConfigMessage) n.b;
            dosVar4.a |= 8;
            dosVar4.f = d4;
        }
        n.Q(PrimesMetricExtensionUtils.e(healthStats, 10005));
        n.R(PrimesMetricExtensionUtils.e(healthStats, 10006));
        n.S(PrimesMetricExtensionUtils.e(healthStats, 10007));
        n.P(PrimesMetricExtensionUtils.e(healthStats, 10008));
        n.O(PrimesMetricExtensionUtils.e(healthStats, 10009));
        n.K(PrimesMetricExtensionUtils.e(healthStats, 10010));
        ProtoMessageTwoIntsLongAndDom h = PrimesMetricExtensionUtils.h(healthStats, 10011);
        if (ProtoMessageSingleEnumFieldH != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar5 = (ProtoMegaConfigMessage) n.b;
            dosVar5.m = h;
            dosVar5.a |= 16;
        }
        n.L(PrimesMetricExtensionUtils.e(healthStats, 10012));
        n.N(DopMetricExtensionConverter.a.d(PrimesMetricExtensionUtils.f(healthStats, 10014)));
        n.M(DonMetricExtensionConverter.a.d(PrimesMetricExtensionUtils.f(healthStats, 10015)));
        long d5 = PrimesMetricExtensionUtils.d(healthStats, 10016);
        if (d5 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar6 = (ProtoMegaConfigMessage) n.b;
            dosVar6.a |= 32;
            dosVar6.v = d5;
        }
        long d6 = PrimesMetricExtensionUtils.d(healthStats, 10017);
        if (d6 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar7 = (ProtoMegaConfigMessage) n.b;
            dosVar7.a |= 64;
            dosVar7.w = d6;
        }
        long d7 = PrimesMetricExtensionUtils.d(healthStats, 10018);
        if (d7 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar8 = (ProtoMegaConfigMessage) n.b;
            dosVar8.a |= 128;
            dosVar8.x = d7;
        }
        long d8 = PrimesMetricExtensionUtils.d(healthStats, 10019);
        if (d8 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar9 = (ProtoMegaConfigMessage) n.b;
            dosVar9.a |= 256;
            dosVar9.y = d8;
        }
        long d9 = PrimesMetricExtensionUtils.d(healthStats, 10020);
        if (d9 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar10 = (ProtoMegaConfigMessage) n.b;
            dosVar10.a |= 512;
            dosVar10.z = d9;
        }
        long d10 = PrimesMetricExtensionUtils.d(healthStats, 10021);
        if (d10 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar11 = (ProtoMegaConfigMessage) n.b;
            dosVar11.a |= 1024;
            dosVar11.A = d10;
        }
        long d11 = PrimesMetricExtensionUtils.d(healthStats, 10022);
        if (d11 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar12 = (ProtoMegaConfigMessage) n.b;
            dosVar12.a |= 2048;
            dosVar12.B = d11;
        }
        long d12 = PrimesMetricExtensionUtils.d(healthStats, 10023);
        if (d12 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar13 = (ProtoMegaConfigMessage) n.b;
            dosVar13.a |= 4096;
            dosVar13.C = d12;
        }
        long d13 = PrimesMetricExtensionUtils.d(healthStats, 10024);
        if (d13 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar14 = (ProtoMegaConfigMessage) n.b;
            dosVar14.a |= 8192;
            dosVar14.D = d13;
        }
        long d14 = PrimesMetricExtensionUtils.d(healthStats, 10025);
        if (d14 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar15 = (ProtoMegaConfigMessage) n.b;
            dosVar15.a |= 16384;
            dosVar15.E = d14;
        }
        long d15 = PrimesMetricExtensionUtils.d(healthStats, 10026);
        if (d15 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar16 = (ProtoMegaConfigMessage) n.b;
            dosVar16.a |= 32768;
            dosVar16.F = d15;
        }
        long d16 = PrimesMetricExtensionUtils.d(healthStats, 10027);
        if (d16 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar17 = (ProtoMegaConfigMessage) n.b;
            dosVar17.a |= 65536;
            dosVar17.G = d16;
        }
        long d17 = PrimesMetricExtensionUtils.d(healthStats, 10028);
        if (d17 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar18 = (ProtoMegaConfigMessage) n.b;
            dosVar18.a |= 131072;
            dosVar18.H = d17;
        }
        long d18 = PrimesMetricExtensionUtils.d(healthStats, 10029);
        if (d18 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar19 = (ProtoMegaConfigMessage) n.b;
            dosVar19.a |= 262144;
            dosVar19.I = d18;
        }
        ProtoMessageTwoIntsLongAndDom h2 = PrimesMetricExtensionUtils.h(healthStats, 10030);
        if (h2 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar20 = (ProtoMegaConfigMessage) n.b;
            dosVar20.J = h2;
            dosVar20.a |= 524288;
        }
        long d19 = PrimesMetricExtensionUtils.d(healthStats, 10031);
        if (d19 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar21 = (ProtoMegaConfigMessage) n.b;
            dosVar21.a |= 1048576;
            dosVar21.K = d19;
        }
        ProtoMessageTwoIntsLongAndDom h3 = PrimesMetricExtensionUtils.h(healthStats, 10032);
        if (h3 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar22 = (ProtoMegaConfigMessage) n.b;
            dosVar22.L = h3;
            dosVar22.a |= 2097152;
        }
        ProtoMessageTwoIntsLongAndDom h4 = PrimesMetricExtensionUtils.h(healthStats, 10033);
        if (h4 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar23 = (ProtoMegaConfigMessage) n.b;
            dosVar23.M = h4;
            dosVar23.a |= 4194304;
        }
        ProtoMessageTwoIntsLongAndDom h5 = PrimesMetricExtensionUtils.h(healthStats, 10034);
        if (h5 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar24 = (ProtoMegaConfigMessage) n.b;
            dosVar24.N = h5;
            dosVar24.a |= 8388608;
        }
        ProtoMessageTwoIntsLongAndDom h6 = PrimesMetricExtensionUtils.h(healthStats, 10035);
        if (h6 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar25 = (ProtoMegaConfigMessage) n.b;
            dosVar25.O = h6;
            dosVar25.a |= 16777216;
        }
        ProtoMessageTwoIntsLongAndDom h7 = PrimesMetricExtensionUtils.h(healthStats, 10036);
        if (h7 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar26 = (ProtoMegaConfigMessage) n.b;
            dosVar26.P = h7;
            dosVar26.a |= 33554432;
        }
        ProtoMessageTwoIntsLongAndDom h8 = PrimesMetricExtensionUtils.h(healthStats, 10037);
        if (h8 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar27 = (ProtoMegaConfigMessage) n.b;
            dosVar27.Q = h8;
            dosVar27.a |= 67108864;
        }
        ProtoMessageTwoIntsLongAndDom h9 = PrimesMetricExtensionUtils.h(healthStats, 10038);
        if (h9 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar28 = (ProtoMegaConfigMessage) n.b;
            dosVar28.R = h9;
            dosVar28.a |= 134217728;
        }
        ProtoMessageTwoIntsLongAndDom h10 = PrimesMetricExtensionUtils.h(healthStats, 10039);
        if (h10 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar29 = (ProtoMegaConfigMessage) n.b;
            dosVar29.S = h10;
            dosVar29.a |= 268435456;
        }
        ProtoMessageTwoIntsLongAndDom h11 = PrimesMetricExtensionUtils.h(healthStats, 10040);
        if (h11 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar30 = (ProtoMegaConfigMessage) n.b;
            dosVar30.T = h11;
            dosVar30.a |= 536870912;
        }
        ProtoMessageTwoIntsLongAndDom h12 = PrimesMetricExtensionUtils.h(healthStats, 10041);
        if (h12 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar31 = (ProtoMegaConfigMessage) n.b;
            dosVar31.U = h12;
            dosVar31.a |= 1073741824;
        }
        ProtoMessageTwoIntsLongAndDom h13 = PrimesMetricExtensionUtils.h(healthStats, 10042);
        if (h13 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar32 = (ProtoMegaConfigMessage) n.b;
            dosVar32.V = h13;
            dosVar32.a |= Integer.MIN_VALUE;
        }
        ProtoMessageTwoIntsLongAndDom h14 = PrimesMetricExtensionUtils.h(healthStats, 10043);
        if (h14 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar33 = (ProtoMegaConfigMessage) n.b;
            dosVar33.W = h14;
            dosVar33.b |= 1;
        }
        ProtoMessageTwoIntsLongAndDom h15 = PrimesMetricExtensionUtils.h(healthStats, 10044);
        if (h15 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar34 = (ProtoMegaConfigMessage) n.b;
            dosVar34.X = h15;
            dosVar34.b |= 2;
        }
        long d20 = PrimesMetricExtensionUtils.d(healthStats, 10045);
        if (d20 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar35 = (ProtoMegaConfigMessage) n.b;
            dosVar35.b |= 4;
            dosVar35.Y = d20;
        }
        long d21 = PrimesMetricExtensionUtils.d(healthStats, 10046);
        if (d21 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar36 = (ProtoMegaConfigMessage) n.b;
            dosVar36.b |= 8;
            dosVar36.Z = d21;
        }
        long d22 = PrimesMetricExtensionUtils.d(healthStats, 10047);
        if (d22 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar37 = (ProtoMegaConfigMessage) n.b;
            dosVar37.b |= 16;
            dosVar37.aa = d22;
        }
        long d23 = PrimesMetricExtensionUtils.d(healthStats, 10048);
        if (d23 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar38 = (ProtoMegaConfigMessage) n.b;
            dosVar38.b |= 32;
            dosVar38.ab = d23;
        }
        long d24 = PrimesMetricExtensionUtils.d(healthStats, 10049);
        if (d24 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar39 = (ProtoMegaConfigMessage) n.b;
            dosVar39.b |= 64;
            dosVar39.ac = d24;
        }
        long d25 = PrimesMetricExtensionUtils.d(healthStats, 10050);
        if (d25 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar40 = (ProtoMegaConfigMessage) n.b;
            dosVar40.b |= 128;
            dosVar40.ad = d25;
        }
        long d26 = PrimesMetricExtensionUtils.d(healthStats, 10051);
        if (d26 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar41 = (ProtoMegaConfigMessage) n.b;
            dosVar41.b |= 256;
            dosVar41.ae = d26;
        }
        long d27 = PrimesMetricExtensionUtils.d(healthStats, 10052);
        if (d27 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar42 = (ProtoMegaConfigMessage) n.b;
            dosVar42.b |= 512;
            dosVar42.af = d27;
        }
        long d28 = PrimesMetricExtensionUtils.d(healthStats, 10053);
        if (d28 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar43 = (ProtoMegaConfigMessage) n.b;
            dosVar43.b |= 1024;
            dosVar43.ag = d28;
        }
        long d29 = PrimesMetricExtensionUtils.d(healthStats, 10054);
        if (d29 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar44 = (ProtoMegaConfigMessage) n.b;
            dosVar44.b |= 2048;
            dosVar44.ah = d29;
        }
        long d30 = PrimesMetricExtensionUtils.d(healthStats, 10055);
        if (d30 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar45 = (ProtoMegaConfigMessage) n.b;
            dosVar45.b |= 4096;
            dosVar45.ai = d30;
        }
        long d31 = PrimesMetricExtensionUtils.d(healthStats, 10056);
        if (d31 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar46 = (ProtoMegaConfigMessage) n.b;
            dosVar46.b |= 8192;
            dosVar46.aj = d31;
        }
        long d32 = PrimesMetricExtensionUtils.d(healthStats, 10057);
        if (d32 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar47 = (ProtoMegaConfigMessage) n.b;
            dosVar47.b |= 16384;
            dosVar47.ak = d32;
        }
        long d33 = PrimesMetricExtensionUtils.d(healthStats, 10058);
        if (d33 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar48 = (ProtoMegaConfigMessage) n.b;
            dosVar48.b = 32768 | dosVar48.b;
            dosVar48.al = d33;
        }
        long d34 = PrimesMetricExtensionUtils.d(healthStats, 10059);
        if (d34 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar49 = (ProtoMegaConfigMessage) n.b;
            dosVar49.b |= 65536;
            dosVar49.am = d34;
        }
        ProtoMessageTwoIntsLongAndDom h16 = PrimesMetricExtensionUtils.h(healthStats, 10061);
        if (h16 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar50 = (ProtoMegaConfigMessage) n.b;
            dosVar50.an = h16;
            dosVar50.b |= 131072;
        }
        long d35 = PrimesMetricExtensionUtils.d(healthStats, 10062);
        if (d35 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar51 = (ProtoMegaConfigMessage) n.b;
            dosVar51.b = 262144 | dosVar51.b;
            dosVar51.ao = d35;
        }
        long d36 = PrimesMetricExtensionUtils.d(healthStats, 10063);
        if (d36 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar52 = (ProtoMegaConfigMessage) n.b;
            dosVar52.b |= 524288;
            dosVar52.ap = d36;
        }
        long d37 = PrimesMetricExtensionUtils.d(healthStats, 10064);
        if (d37 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar53 = (ProtoMegaConfigMessage) n.b;
            dosVar53.b |= 1048576;
            dosVar53.aq = d37;
        }
        ProtoMegaConfigMessage dosVar54 = (ProtoMegaConfigMessage) n.h();
        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dosVar54.E(5);
        ddfVar.n(dosVar54);
        SyncPathMatcher bvvVar = bwfVar.b;
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).g);
        for (int i = 0; NavInstructionTypeEnum < ((ProtoMegaConfigMessage) ddfVar.b).g.size(); i++) {
            ddfVar.ac(i, bvvVar.c(1, ddfVar.D(NavInstructionTypeEnum)));
        }
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).h);
        for (int i2 = 0; i2 < ((ProtoMegaConfigMessage) ddfVar.b).h.size(); i2++) {
            ddfVar.ad(i2, bvvVar.c(1, ddfVar.E(i2)));
        }
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).i);
        for (int i3 = 0; i3 < ((ProtoMegaConfigMessage) ddfVar.b).i.size(); i3++) {
            ddfVar.ae(i3, bvvVar.c(1, ddfVar.F(i3)));
        }
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).j);
        for (int i4 = 0; i4 < ((ProtoMegaConfigMessage) ddfVar.b).j.size(); i4++) {
            ddfVar.ab(i4, bvvVar.c(1, ddfVar.G(i4)));
        }
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).k);
        for (int i5 = 0; i5 < ((ProtoMegaConfigMessage) ddfVar.b).k.size(); i5++) {
            ddfVar.Y(i5, bvvVar.c(2, ddfVar.H(i5)));
        }
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).l);
        for (int i6 = 0; i6 < ((ProtoMegaConfigMessage) ddfVar.b).l.size(); i6++) {
            ddfVar.V(i6, bvvVar.c(3, ddfVar.I(i6)));
        }
        Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).n);
        for (int i7 = 0; i7 < ((ProtoMegaConfigMessage) ddfVar.b).n.size(); i7++) {
            ddfVar.X(i7, bvvVar.c(5, ddfVar.J(i7)));
        }
        return new MetricSnapshotRecord((ProtoMegaConfigMessage) ddfVar.h(), l, l2, 401601347L, Long.valueOf(bvnVar.b != null ? r0.hashCode() : 0L), doiVar, null, null);
    }

    public static ProtoMessageLongBoolIntString d(String str, Context context) {
        ProtoMsgHoldingMessageAndBool n = ProtoMessageLongBoolIntString.f.n();
        long elapsedCpuTime = Process.getElapsedCpuTime();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageLongBoolIntString dpgVar = (ProtoMessageLongBoolIntString) n.b;
        dpgVar.a |= 1;
        dpgVar.b = elapsedCpuTime;
        boolean c = ProcessNameReader.c(context);
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageLongBoolIntString dpgVar2 = (ProtoMessageLongBoolIntString) n.b;
        dpgVar2.a |= 2;
        dpgVar2.c = c;
        int activeCount = Thread.activeCount();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageLongBoolIntString dpgVar3 = (ProtoMessageLongBoolIntString) n.b;
        int i = dpgVar3.a | 4;
        dpgVar3.a = i;
        dpgVar3.d = activeCount;
        if (str != null) {
            dpgVar3.a = i | 8;
            dpgVar3.e = str;
        }
        return (ProtoMessageLongBoolIntString) n.h();
    }
}
