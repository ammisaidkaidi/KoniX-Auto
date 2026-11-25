package defpackage;

import android.os.health.HealthStats;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DoqMetricExtensionConverter extends AbstractMetricExtensionConverter {
    public static final DoqMetricExtensionConverter a = new DoqMetricExtensionConverter();

    private DoqMetricExtensionConverter() {
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite a(String str, Object obj) {
        HealthStats healthStats = (HealthStats) obj;
        ProtoMsgHoldingMessageAndBool n = ProtoMessageThreeIntsAndDom.e.n();
        int d = (int) PrimesMetricExtensionUtils.d(healthStats, 50001);
        if (ProtoMsgIntStringInt != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageThreeIntsAndDom doqVar = (ProtoMessageThreeIntsAndDom) n.b;
            doqVar.a |= 1;
            doqVar.b = d;
        }
        int d2 = (int) PrimesMetricExtensionUtils.d(healthStats, 50002);
        if (d2 != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageThreeIntsAndDom doqVar2 = (ProtoMessageThreeIntsAndDom) n.b;
            doqVar2.a |= 2;
            doqVar2.c = d2;
        }
        if (str != null) {
            ProtoMessageLongAndString g = PrimesMetricExtensionUtils.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageThreeIntsAndDom doqVar3 = (ProtoMessageThreeIntsAndDom) n.b;
            g.getClass();
            doqVar3.d = g;
            doqVar3.a |= 4;
        }
        ProtoMessageThreeIntsAndDom doqVar4 = (ProtoMessageThreeIntsAndDom) n.h();
        if (PrimesMetricExtensionUtils.n(doqVar4)) {
            return null;
        }
        return doqVar4;
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite b(MessageLite derVar, MessageLite derVar2) {
        int i;
        int i2;
        ProtoMessageThreeIntsAndDom doqVar = (ProtoMessageThreeIntsAndDom) derVar;
        ProtoMessageThreeIntsAndDom doqVar2 = (ProtoMessageThreeIntsAndDom) derVar2;
        if (doqVar == null || doqVar2 == null) {
            return doqVar;
        }
        ProtoMsgHoldingMessageAndBool n = ProtoMessageThreeIntsAndDom.e.n();
        if ((doqVar.a & 1) != 0 && (i2 = doqVar.b - doqVar2.b) != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageThreeIntsAndDom doqVar3 = (ProtoMessageThreeIntsAndDom) n.b;
            doqVar3.a |= 1;
            doqVar3.b = i2;
        }
        if ((doqVar.a & 2) != 0 && (NavInstructionTypeEnum = doqVar.c - doqVar2.c) != 0) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageThreeIntsAndDom doqVar4 = (ProtoMessageThreeIntsAndDom) n.b;
            doqVar4.a |= 2;
            doqVar4.c = i;
        }
        ProtoMessageLongAndString domVar = doqVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageThreeIntsAndDom doqVar5 = (ProtoMessageThreeIntsAndDom) n.b;
        domVar.getClass();
        doqVar5.d = domVar;
        doqVar5.a |= 4;
        ProtoMessageThreeIntsAndDom doqVar6 = (ProtoMessageThreeIntsAndDom) n.h();
        if (PrimesMetricExtensionUtils.n(doqVar6)) {
            return null;
        }
        return doqVar6;
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* bridge */ /* synthetic */ String c(MessageLite derVar) {
        ProtoMessageLongAndString domVar = ((ProtoMessageThreeIntsAndDom) derVar).d;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
