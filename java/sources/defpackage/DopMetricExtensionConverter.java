package defpackage;

import android.os.health.HealthStats;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DopMetricExtensionConverter extends AbstractMetricExtensionConverter {
    public static final DopMetricExtensionConverter a = new DopMetricExtensionConverter();

    private DopMetricExtensionConverter() {
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite a(String str, Object obj) {
        HealthStats healthStats = (HealthStats) obj;
        ProtoMsgHoldingMessageAndBool n = dop.i.n();
        long d = PrimesMetricExtensionUtils.d(healthStats, 30001);
        if (ProtoMsgIntStringInt != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar = (ProtoMessageSixLongsAndDom) n.b;
            dopVar.a |= 1;
            dopVar.b = d;
        }
        long d2 = PrimesMetricExtensionUtils.d(healthStats, 30002);
        if (d2 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar2 = (ProtoMessageSixLongsAndDom) n.b;
            dopVar2.a |= 2;
            dopVar2.c = d2;
        }
        long d3 = PrimesMetricExtensionUtils.d(healthStats, 30003);
        if (d3 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar3 = (ProtoMessageSixLongsAndDom) n.b;
            dopVar3.a |= 4;
            dopVar3.d = d3;
        }
        long d4 = PrimesMetricExtensionUtils.d(healthStats, 30004);
        if (d4 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar4 = (ProtoMessageSixLongsAndDom) n.b;
            dopVar4.a |= 8;
            dopVar4.e = d4;
        }
        long d5 = PrimesMetricExtensionUtils.d(healthStats, 30005);
        if (d5 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar5 = (ProtoMessageSixLongsAndDom) n.b;
            dopVar5.a |= 16;
            dopVar5.f = d5;
        }
        long d6 = PrimesMetricExtensionUtils.d(healthStats, 30006);
        if (d6 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar6 = (ProtoMessageSixLongsAndDom) n.b;
            dopVar6.a |= 32;
            dopVar6.g = d6;
        }
        if (str != null) {
            ProtoMessageLongAndString g = PrimesMetricExtensionUtils.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageSixLongsAndDom dopVar7 = (ProtoMessageSixLongsAndDom) n.b;
            g.getClass();
            dopVar7.h = g;
            dopVar7.a |= 64;
        }
        ProtoMessageSixLongsAndDom dopVar8 = (ProtoMessageSixLongsAndDom) n.h();
        if (PrimesMetricExtensionUtils.m(dopVar8)) {
            return null;
        }
        return dopVar8;
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite b(MessageLite derVar, MessageLite derVar2) {
        ProtoMessageSixLongsAndDom dopVar = (ProtoMessageSixLongsAndDom) derVar;
        ProtoMessageSixLongsAndDom dopVar2 = (ProtoMessageSixLongsAndDom) derVar2;
        if (dopVar == null || dopVar2 == null) {
            return dopVar;
        }
        ProtoMsgHoldingMessageAndBool n = dop.i.n();
        if ((dopVar.a & 1) != 0) {
            long j = dopVar.b - dopVar2.b;
            if (ProtoMessageTwoIntsAndFlagValue != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageSixLongsAndDom dopVar3 = (ProtoMessageSixLongsAndDom) n.b;
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
                ProtoMessageSixLongsAndDom dopVar4 = (ProtoMessageSixLongsAndDom) n.b;
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
                ProtoMessageSixLongsAndDom dopVar5 = (ProtoMessageSixLongsAndDom) n.b;
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
                ProtoMessageSixLongsAndDom dopVar6 = (ProtoMessageSixLongsAndDom) n.b;
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
                ProtoMessageSixLongsAndDom dopVar7 = (ProtoMessageSixLongsAndDom) n.b;
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
                ProtoMessageSixLongsAndDom dopVar8 = (ProtoMessageSixLongsAndDom) n.b;
                dopVar8.a |= 32;
                dopVar8.g = j6;
            }
        }
        ProtoMessageLongAndString domVar = dopVar.h;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageSixLongsAndDom dopVar9 = (ProtoMessageSixLongsAndDom) n.b;
        domVar.getClass();
        dopVar9.h = domVar;
        dopVar9.a |= 64;
        ProtoMessageSixLongsAndDom dopVar10 = (ProtoMessageSixLongsAndDom) n.h();
        if (PrimesMetricExtensionUtils.m(dopVar10)) {
            return null;
        }
        return dopVar10;
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* bridge */ /* synthetic */ String c(MessageLite derVar) {
        ProtoMessageLongAndString domVar = ((ProtoMessageSixLongsAndDom) derVar).h;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
