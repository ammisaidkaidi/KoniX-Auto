package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DolMetricExtensionConverter extends AbstractMetricExtensionConverter {
    public static final DolMetricExtensionConverter a = new DolMetricExtensionConverter();

    private DolMetricExtensionConverter() {
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* bridge */ /* synthetic */ MessageLite a(String str, Object obj) {
        int intValue = ((Long) obj).intValue();
        if (intValue == 0) {
            return null;
        }
        ProtoMsgHoldingMessageAndBool n = dol.d.n();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageWithDomSubMessage dolVar = (ProtoMessageWithDomSubMessage) n.b;
        dolVar.a |= 1;
        dolVar.b = intValue;
        if (str != null) {
            ProtoMessageLongAndString g = PrimesMetricExtensionUtils.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageWithDomSubMessage dolVar2 = (ProtoMessageWithDomSubMessage) n.b;
            g.getClass();
            dolVar2.c = g;
            dolVar2.a |= 2;
        }
        return (ProtoMessageWithDomSubMessage) n.h();
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite b(MessageLite derVar, MessageLite derVar2) {
        ProtoMessageWithDomSubMessage dolVar = (ProtoMessageWithDomSubMessage) derVar;
        ProtoMessageWithDomSubMessage dolVar2 = (ProtoMessageWithDomSubMessage) derVar2;
        if (dolVar == null || dolVar2 == null) {
            return dolVar;
        }
        if ((dolVar.a & 1) == 0) {
            return null;
        }
        ProtoMsgHoldingMessageAndBool n = dol.d.n();
        ProtoMessageLongAndString domVar = dolVar.c;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageWithDomSubMessage dolVar3 = (ProtoMessageWithDomSubMessage) n.b;
        domVar.getClass();
        dolVar3.c = domVar;
        int i = dolVar3.a | 2;
        dolVar3.a = i;
        int i2 = dolVar.b - dolVar2.b;
        if (i2 == 0) {
            return null;
        }
        dolVar3.a = i | 1;
        dolVar3.b = i2;
        return (ProtoMessageWithDomSubMessage) n.h();
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* bridge */ /* synthetic */ String c(MessageLite derVar) {
        ProtoMessageLongAndString domVar = ((ProtoMessageWithDomSubMessage) derVar).c;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
