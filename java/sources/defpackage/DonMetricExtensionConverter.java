package defpackage;

import android.os.health.HealthStats;
import java.util.Collections;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DonMetricExtensionConverter extends AbstractMetricExtensionConverter {
    public static final DonMetricExtensionConverter a = new DonMetricExtensionConverter();

    private DonMetricExtensionConverter() {
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite a(String str, Object obj) {
        HealthStats healthStats = (HealthStats) obj;
        ProtoMsgHoldingMessageAndBool n = don.e.n();
        n.B(DoqMetricExtensionConverter.a.d(PrimesMetricExtensionUtils.f(healthStats, 40001)));
        n.C(DolMetricExtensionConverter.a.d((healthStats == null || !healthStats.hasMeasurements(40002)) ? Collections.emptyMap() : healthStats.getMeasurements(40002)));
        if (str != null) {
            ProtoMessageLongAndString g = PrimesMetricExtensionUtils.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageWithTwoEnumsAndDom donVar = (ProtoMessageWithTwoEnumsAndDom) n.b;
            g.getClass();
            donVar.d = g;
            donVar.a |= 1;
        }
        ProtoMessageWithTwoEnumsAndDom donVar2 = (ProtoMessageWithTwoEnumsAndDom) n.h();
        if (PrimesMetricExtensionUtils.l(donVar2)) {
            return null;
        }
        return donVar2;
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite b(MessageLite derVar, MessageLite derVar2) {
        ProtoMessageWithTwoEnumsAndDom donVar = (ProtoMessageWithTwoEnumsAndDom) derVar;
        ProtoMessageWithTwoEnumsAndDom donVar2 = (ProtoMessageWithTwoEnumsAndDom) derVar2;
        if (donVar == null || donVar2 == null) {
            return donVar;
        }
        ProtoMsgHoldingMessageAndBool n = don.e.n();
        n.B(DoqMetricExtensionConverter.a.e(donVar.b, donVar2.b));
        n.C(DolMetricExtensionConverter.a.e(donVar.c, donVar2.c));
        ProtoMessageLongAndString domVar = donVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageWithTwoEnumsAndDom donVar3 = (ProtoMessageWithTwoEnumsAndDom) n.b;
        domVar.getClass();
        donVar3.d = domVar;
        donVar3.a |= 1;
        ProtoMessageWithTwoEnumsAndDom donVar4 = (ProtoMessageWithTwoEnumsAndDom) n.h();
        if (PrimesMetricExtensionUtils.l(donVar4)) {
            return null;
        }
        return donVar4;
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* bridge */ /* synthetic */ String c(MessageLite derVar) {
        ProtoMessageLongAndString domVar = ((ProtoMessageWithTwoEnumsAndDom) derVar).d;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
