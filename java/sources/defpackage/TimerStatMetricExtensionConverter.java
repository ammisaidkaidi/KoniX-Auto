package defpackage;

import android.os.health.TimerStat;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TimerStatMetricExtensionConverter extends AbstractMetricExtensionConverter {
    public static final TimerStatMetricExtensionConverter a = new TimerStatMetricExtensionConverter();

    private TimerStatMetricExtensionConverter() {
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite a(String str, Object obj) {
        return PrimesMetricExtensionUtils.j(str, (TimerStat) obj);
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* synthetic */ MessageLite b(MessageLite derVar, MessageLite derVar2) {
        return PrimesMetricExtensionUtils.i((ProtoMessageTwoIntsLongAndDom) derVar, (ProtoMessageTwoIntsLongAndDom) derVar2);
    }

    @Override // defpackage.AbstractMetricExtensionConverter
    public final /* bridge */ /* synthetic */ String c(MessageLite derVar) {
        ProtoMessageTwoIntsLongAndDom dorVar = (ProtoMessageTwoIntsLongAndDom) derVar;
        ProtoMessageLongAndString domVar = dorVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        int i = domVar.a & 2;
        ProtoMessageLongAndString domVar2 = dorVar.d;
        if (NavInstructionTypeEnum != 0) {
            if (domVar2 == null) {
                domVar2 = dom.d;
            }
            return domVar2.c;
        }
        if (domVar2 == null) {
            domVar2 = dom.d;
        }
        return Long.toHexString(domVar2.b);
    }
}
